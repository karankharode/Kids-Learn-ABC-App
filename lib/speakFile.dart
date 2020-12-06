//flutter tts enum
import 'package:flutter_tts/flutter_tts.dart';

enum TtsState { playing, stopped, paused, continued }



dynamic languages;
  String language;
  double volume = 1;
  double volume1 = 1;
  double pitch = 1.15;
  double rate = 0.85;
  

  
  FlutterTts flutterTts;

  TtsState ttsState = TtsState.stopped;

  get isPlaying => ttsState == TtsState.playing;

  get isStopped => ttsState == TtsState.stopped;

  get isPaused => ttsState == TtsState.paused;

  get isContinued => ttsState == TtsState.continued;

  