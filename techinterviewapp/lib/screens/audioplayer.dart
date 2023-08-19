// screens/audio_player.dart
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';
  
class AudioPlayerScreen extends StatefulWidget {
  final String audioUrl;
  final String spokenText;

  AudioPlayerScreen({required this.audioUrl, required this.spokenText});

  @override
  _AudioPlayerScreenState createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  late AudioPlayer audioPlayer;
  AudioPlayerState audioPlayerState = AudioPlayerState.STOPPED;
  final FlutterTts flutterTts = FlutterTts();

  Future _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(widget.spokenText);
  }

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        audioPlayerState = event;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void _playAudio() async {
    await audioPlayer.play(widget.audioUrl);
  }

  void _pauseAudio() async {
    await audioPlayer.pause();
  }

  void _stopAudio() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Audio Player')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Audio Player State: $audioPlayerState'),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                _playAudio();
                _speak(); // Call TTS when playing audio
              },
            ),
            IconButton(
              icon: Icon(Icons.pause),
              onPressed: _pauseAudio,
            ),
            IconButton(
              icon: Icon(Icons.stop),
              onPressed: _stopAudio,
            ),
          ],
        ),
      ),
    );
  }
}
