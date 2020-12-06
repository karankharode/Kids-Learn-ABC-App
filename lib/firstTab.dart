import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kidsapp/config.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:kidsapp/values/styles.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';


import 'gridArray.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kidsapp/colors.dart';
import 'package:kidsapp/config.dart';

import 'SecondPage.dart';
import 'speakFile.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  String _newVoiceText;

  void initState() {
    super.initState();
    // FacebookAudienceNetwork.init( 
    //   // testingId: 'e97db43b-55b0-4f88-a5a5-28eea5593ffb'
    // );
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
        print("Playing");
        ttsState = TtsState.playing;
      });
    });
    flutterTts.setCompletionHandler(() {
      setState(() {
        print("Complete");
        ttsState = TtsState.stopped;
      });
    });
    flutterTts.setCancelHandler(() {
      setState(() {
        print("Cancel");
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
    await flutterTts.setVolume(volume);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Kids App",style: hompageHeadingStle,)),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 120,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: homepageTiles.length,
              itemBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.all(3),
                  height: 165,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        right: 15,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              createCurrentGridData();
                            });
                            String speaktext =
                                "Let's Learn, ${homepageTiles[index]['title']}";
                            playAndSpeak(speaktext);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(
                                    heroTag: homepageTiles[index]['imgpath'],
                                    title: homepageTiles[index]['title'])));
                          },
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width - 60,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: tileColor,
                              boxShadow: [
                                new BoxShadow(
                                    color: tileShadowColor,
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    offset: Offset(2, 3))
                              ],
                            ),
                            child: Center(
                                child: Text(
                              "${homepageTiles[index]['title']}",
                              style: TextStyle(fontSize: 27, color: textColor),
                            )),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 15,
                          top: 30,
                          child: Hero(
                            tag: homepageTiles[index]['imgpath'],
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          homepageTiles[index]['imgpath']))),
                              height: 110,
                              width: 100,
                            ),
                          ))
                    ],
                  ),
                );
              },
            ),
          ),
//           Container(
//   alignment: Alignment(0.5, 1),
//   child: FacebookBannerAd(
//     // 2717882621861781_2717886721861371
//     placementId: Platform.isAndroid ? "2717882621861781_2717886721861371" : "YOUR_IOS_PLACEMENT_ID",
//     bannerSize: BannerSize.STANDARD,
//     listener: (result, value) {
//           switch (result) {
//             case BannerAdResult.ERROR:
//       print("Error: $value");
//       break;
//             case BannerAdResult.LOADED:
//       print("Loaded: $value");
//       break;
//             case BannerAdResult.CLICKED:
//       print("Clicked: $value");
//       break;
//             case BannerAdResult.LOGGING_IMPRESSION:
//       print("Logging Impression: $value");
//       break;
//           }
//     },
//   ),
// )
        ],
      ),
    );
  }
}
