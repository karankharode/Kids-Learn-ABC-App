import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kidsapp/colors.dart';
import 'package:kidsapp/gridArray.dart';
import 'package:kidsapp/speakFile.dart';
import 'config.dart';

class ThirdPage extends StatefulWidget {
  
  final gridIndex;

  ThirdPage({ this.gridIndex});
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  // flutter tts code
  String _newVoiceText;
  final CarouselController _controller = CarouselController();
  

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


   _onChange(String text)  {
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
        
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              
              Center(
                  child: CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height - 70,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                  initialPage: currentIndex == 0
                      ? (widget.gridIndex) * 11
                      : widget.gridIndex,
                  onPageChanged: (index, reason) {
                    playAndSpeak(currentGridData[index]['word']);
                  },
                  autoPlay: autoPlaying,
                  
                  
                  
                ),
                carouselController: _controller,
                items: currentGridData
                    .map((item) => Container(
                          child: Stack(
                            children: [
                             Center(
                                  child: Image(
                                    image: AssetImage(
                                      
                                      "assets/${item['img']}.webp",
                                      // widget.heroTag
                                    ),
                                    fit: BoxFit.fill,
                                    height: MediaQuery.of(context).size.width,
                                    width:
                                        MediaQuery.of(context).size.width)),
                                   Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    left: 40,
                                    right: 2,
                                  ),
                                  child: Text(
                                    item['word'],
                                    style: TextStyle(fontSize: 34),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              
                                  
                            ],
                          ),
                        ))
                    .toList(),
              )),

              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color: tileColor,
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      boxShadow: [new BoxShadow(
                        color: tileShadowColor,
                        blurRadius: 3,
                        // spreadRadius: 1,

                      )]
                    ),
                    margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            _controller.previousPage();
                          },
                          child: Icon(
                            Icons.skip_previous,
                            size: 34,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (autoPlaying) {
                              setState(() {
                                playbutton = Icons.play_circle_outline_outlined;
                                autoPlaying = false;
                                // _controller.stopAutoPlay();
                              });
                            } else {
                              setState(() {
                                playbutton = Icons.stop_circle_outlined;
                                autoPlaying = true;
                                // _controller.startAutoPlay();
                              });
                            }
                          },
                          child: Icon(
                            playbutton,
                            size: 34,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (soundON) {
                              setState(() {
                                volume1 = 0;
                                soundON = false;
                                sound = Icons.volume_off;
                              });
                            } else {
                              setState(() {
                                volume1 = 1;
                                soundON = true;
                                sound = Icons.volume_up;
                              });
                            }
                          },
                          child: Icon(
                            sound,
                            size: 34,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _controller.nextPage();
                          },
                          child: Icon(
                            Icons.skip_next_sharp,
                            size: 34,
                          ),
                        ),
                      ],
                    ),
                  )),

              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ])));
  }
}
