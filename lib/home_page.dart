import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AudioPlayer audioPlayer = AudioPlayer();

  void playRingtone() async {
    await audioPlayer.play(AssetSource('audios/ringing.mp3')); //replace 'ringtone.mp3' with your file
  }

  void stopRingtone() {
    audioPlayer.stop();
  }

  void pauseRingtone() {
    audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
          ),
          TextButton(
              onPressed: playRingtone,
              child: Text('play audio')
          ),
          SizedBox(height: 5,),
          TextButton(
              onPressed: (){},
              child: Text('pause audio')
          ),
          SizedBox(height: 5,),
          TextButton(
              onPressed: (){},
              child: Text('stop audio')
          ),
        ],
      ),
    );
  }
}
