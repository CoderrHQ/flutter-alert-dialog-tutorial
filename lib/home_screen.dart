import 'package:flutter/material.dart';

import '/cupertino_dialog_button.dart';
import '/material_dialog_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 1000),
            MaterialDialogButton(),
            SizedBox(height: 20),
            CupertinoDialogButton(),
          ],
        ),
      ),
    );
  }
}
