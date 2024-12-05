import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Taskone extends StatefulWidget {
  const Taskone({super.key});

  @override
  State<Taskone> createState() => _TaskoneState();
}

class _TaskoneState extends State<Taskone> {
  List<File> selectedIamge = [];
  File? file;
  void selectImageFormGallery() async {
    ImagePicker pickerImagedata = ImagePicker();
    List<XFile> xFile = await pickerImagedata.pickMultiImage(
      imageQuality: 80,
      maxWidth: 800,
    );
    for (var element in xFile) {
      selectedIamge.add(File(element.path));
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MaterialButton(
                onPressed: () {
                  selectImageFormGallery();
                  setState(() {});
                },
                color: Colors.blueAccent,
                child: const Text('Upload Form Gallery'),
              ),
              Expanded(
                  child: GridView.builder(
                itemCount: selectedIamge.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return Image.file(
                    selectedIamge[index],
                    fit: BoxFit.cover,
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
