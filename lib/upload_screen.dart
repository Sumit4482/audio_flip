import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class UploadAudioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Audio"),
      ),
      body: const Center(
        child: Text(
          "Upload Audio Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
