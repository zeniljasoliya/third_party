import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class TaskTwo extends StatefulWidget {
  const TaskTwo({super.key});

  @override
  State<TaskTwo> createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  File? file;

  VideoPlayerController? controller;

  Future selectImageFromGallrey() async {
    ImagePicker pickImageData = ImagePicker();
    XFile? xFile = await pickImageData.pickVideo(source: ImageSource.gallery);
    file = xFile != null ? File(xFile.path) : null;
    controller = VideoPlayerController.file(file!)
      ..initialize().then((value) {
        controller!.play();
        setState(() {});
      });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                await selectImageFromGallrey();
                setState(() {});
              },
              color: Colors.blueAccent,
              child: const Text('Upload Video'),
            ),
            GestureDetector(
              onTap: () {
                controller!.value.isPlaying
                    ? controller!.pause()
                    : controller!.play();
                setState(() {});
              },
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 500,
                  maxWidth: 400,
                ),
                child: controller == null ? null : VideoPlayer(controller!),
              ),
            )
          ],
        ),
      ),
    );
  }
}
