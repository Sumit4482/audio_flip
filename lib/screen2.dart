// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:filp_audio/screen3.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool _isLoading = false;

  Future<void> _simulateLoadingAndNavigate(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    // Simulate loading for 5 seconds
    await Future.delayed(const Duration(seconds: 5));

    // Navigate to ScreenThree
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ScreenThree()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Flipper"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click on the button to Flip Audio:",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _simulateLoadingAndNavigate(context),
              child: const Text("Flip Audio"),
            ),
            const SizedBox(height: 16),
            if (_isLoading) const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
