import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/services/post.dart';

class ImagePickerView extends StatefulWidget {
  const ImagePickerView({super.key});

  @override
  State<ImagePickerView> createState() => _ImagePickerViewState();
}

class _ImagePickerViewState extends State<ImagePickerView> {
  File? _image;
  String? imageString;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image piker view")),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                getImage();
                imageString = _image.toString();
                log(imageString ?? "no image");
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                width: 200,
                height: 200,
                child: _image != null
                    ? Image.file(_image!.absolute, fit: BoxFit.cover)
                    : Icon(Icons.add_a_photo),
              ),
            ),
            MaterialButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                if (prefs.getBool('is login') == true) {
                  log('have data');
                } else {
                  log('no data');
                }
              },
              child: Text("have data?"),
            ),
            MaterialButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('is login', true);
              },
              child: Text("save data"),
            ),
            MaterialButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.clear();
              },
              child: Text("resit data"),
            ),
            MaterialButton(
              onPressed: () async {
                Post post = Post();
                await post.createPost();
              },
              child: Text("post data"),
            ),
          ],
        ),
      ),
    );
  }
}
