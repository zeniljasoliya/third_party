import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ThirdPartyDemo extends StatefulWidget {
  const ThirdPartyDemo({super.key});

  @override
  State<ThirdPartyDemo> createState() => _ThirdPartyDemoState();
}

class _ThirdPartyDemoState extends State<ThirdPartyDemo> {
  File? file;

  void selectImageFromGallrey() async {
    ImagePicker pickImageData = ImagePicker();
    XFile? xFile = await pickImageData.pickImage(source: ImageSource.gallery);
    file = File(xFile!.path);
    setState(() {});
  }

  void selectImageFromCamera() async {
    ImagePicker pickImageData = ImagePicker();
    XFile? xFile = await pickImageData.pickImage(source: ImageSource.gallery);
    file = File(xFile!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: file != null
                  ? FileImage(file!)
                  : const NetworkImage(
                          'https://m.media-amazon.com/images/I/41sJ50FH9OL._SX300_SY300_QL70_FMwebp_.jpg')
                      as ImageProvider,
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                selectImageFromGallrey();
                setState(() {});
              },
              color: Colors.blueAccent,
              child: const Text('Upload From Gallery'),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                selectImageFromCamera();
                setState(() {});
              },
              color: Colors.blueAccent,
              child: const Text('Take Picture'),
            )
          ],
        ),
      ),
    );
  }
}
