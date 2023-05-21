import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialDialogButton extends StatelessWidget {
  const MaterialDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Delete Account'),
              content: const Text(
                'Are you sure you want to delete your account? This action cannot be undone.',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Delete'),
                ),
              ],
            );
          },
        );
      },
      child: const Text('Material Dialog'),
    );
  }
}
