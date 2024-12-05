import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerDemo extends StatefulWidget {
  const FilePickerDemo({super.key});

  @override
  State<FilePickerDemo> createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  Future<void> selectfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    File? file;

    file = result != null
        ? File(
            result.files.single.path!,
          )
        : null;
    // else {
    //   // User canceled the picker
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                selectfile();
              },
              color: Colors.blueGrey,
              child: const Text('Select File'),
            )
          ],
        ),
      ),
    );
  }
}
