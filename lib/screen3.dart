// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  Future<void> _saveFlippedAudio(BuildContext context) async {
    // Simulate saving for 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // Show success Snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Flipped audio saved successfully!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Three"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Save your Flipped Audio in Device :",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _saveFlippedAudio(context),
              child: const Text("Save Flipped Audio"),
            ),
          ],
        ),
      ),
    );
  }
}
