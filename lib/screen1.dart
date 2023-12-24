// ignore_for_file: library_private_types_in_public_api

import 'package:file_picker/file_picker.dart';
import 'package:filp_audio/screen2.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  String _filePath = "";
  bool _isNextButtonActive = false;

  Future<void> _pickAudioFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
    );

    if (result != null) {
      setState(() {
        _filePath = result.files.first.path!;
        _isNextButtonActive = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pick an Audio File",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _pickAudioFile,
            child: const Text("Pick File"),
          ),
          const SizedBox(height: 16),
          if (_filePath.isNotEmpty)
            Text(
              "Selected File Details : \n $_filePath"
              "${_filePath.length.bitLength}",
              style: const TextStyle(fontSize: 16),
            ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _isNextButtonActive
                ? () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const ScreenTwo()),
                    );
                  }
                : null,
            child: const Text("Next"),
          ),
        ],
      ),
    );
  }
}
