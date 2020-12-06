import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kidsapp/colors.dart';
import 'package:kidsapp/config.dart';
import 'package:kidsapp/gridArray.dart';
import 'package:kidsapp/speakFile.dart';

import 'ThirdPage.dart';

class SecondPage extends StatefulWidget {
  final heroTag;
  final title;
  SecondPage({this.heroTag, this.title});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // flutter tts code
  String _newVoiceText;

  void initState() {
    super.initState();
    initTts();
  }

  initTts() {
    flutterTts = FlutterTts();

    if (!kIsWeb) {
      if (Platform.isAndroid) {
        _getEngines();
      }
    }

    flutterTts.setStartHandler(() {
      setState(() {
        ttsState = TtsState.playing;
      });
    });

    flutterTts.setCompletionHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setCancelHandler(() {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });

    flutterTts.setErrorHandler((msg) {
      setState(() {
        print("error: $msg");
        ttsState = TtsState.stopped;
      });
    });
  }

  Future _getEngines() async {
    var engines = await flutterTts.getEngines;
    if (engines != null) {
      for (dynamic engine in engines) {
        print(engine);
      }
    }
  }

  Future _speak() async {
    await flutterTts.setVolume(volume1);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);

    if (_newVoiceText != null) {
      if (_newVoiceText.isNotEmpty) {
        var result = await flutterTts.speak(_newVoiceText);
        if (result == 1) setState(() => ttsState = TtsState.playing);
      }
    }
  }

 

  void _onChange(String text) {
    setState(() {
      _newVoiceText = text;
    });
  }

  @override
  void dispose() {
    super.dispose();
    flutterTts.stop();
  }

  playAndSpeak(speaktext) {
    _onChange(speaktext);
    _speak();
  }
  // flutter tts code  --end
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kids App"),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: tileShadowColor,
                            blurRadius: 4,
                            spreadRadius: 4,
                          )
                        ],
                        color: tileColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(33),
                            bottomRight: Radius.circular(33))),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 30, color: textColor),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 200,
                        child: Hero(
                            tag: widget.heroTag,
                            child: Image(image: AssetImage(widget.heroTag))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 7,bottom: 20),
              child: Container(
                  height: 450,
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 4,
                    children: List.generate(
                        currentIndex == 0
                            ? alphabetGridData.length
                            : currentGridData.length, (index) {
                      return Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(color: gridshadow, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 30,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ThirdPage(
                                    
                                    gridIndex: index)));
                            playAndSpeak(currentIndex == 0
                                ? alphabetGridData[index]['sound']
                                : currentGridData[index]['word']);
                          },
                          child: Hero(
                            tag:
                                "assets/${currentIndex == 0 ? alphabetGridData[index]['img'] : currentGridData[index]['img']}.webp",
                            child: Image(
                              image: AssetImage(
                                  "assets/${currentIndex == 0 ? alphabetGridData[index]['img'] : currentGridData[index]['img']}.webp"),
                            ),
                          ),
                        ),
                      );
                    }),
                  )),
            ),

            
          
          
          ],
        ),
      ),
    );
  }
}
