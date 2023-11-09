// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class song_page extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<song_page> {
  AudioPlayer audioPlayer = AudioPlayer();
  String audioUrl = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3"; // Ganti dengan URL audio yang ingin Anda putar

  @override
  void dispose() {
    audioPlayer.dispose(); // Pastikan untuk membebaskan sumber daya setelah selesai
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SONG PAGE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Color.fromRGBO(3, 11, 244, 1)
               
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Putar Lagu dari Internet'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                audioPlayer.play(Uri.parse(audioUrl) as Source);
              },
              child: Text('Putar'),
            ),
            ElevatedButton(
              onPressed: () {
                audioPlayer.pause();
              },
              child: Text('Jeda'),
            ),
            ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
              },
              child: Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}
