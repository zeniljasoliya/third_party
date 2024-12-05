import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class JustAudioDemo extends StatefulWidget {
  const JustAudioDemo({super.key});

  @override
  State<JustAudioDemo> createState() => _JustAudioDemoState();
}

class _JustAudioDemoState extends State<JustAudioDemo> {
  AudioPlayer player = AudioPlayer();
  Future<void> loadPlayer() async {
    // await player.setUrl('https://youtu.be/NFsEqOBG51M');
    await player.setAsset('assets/songs/Aaj_Se_Teri.mp3');
    // await player.setAudioSource(source)
  }

  @override
  initState() {
    loadPlayer();
    super.initState();
  }

  Future<void> play() async => await player.play();
  Future<void> pause() async => await player.pause();
  // Future<Duration?>? duration;
  // void justAudioPlayer() {
  //   AudioPlayer player = AudioPlayer();
  //   duration = player.setUrl('http://foo.com/bar.mp3');
  //   player.play();
  //   // player.pause();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await play();
          setState(() {});
        },
        child: const Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}
