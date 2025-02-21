import 'package:flutter/material.dart';

class CreateMeetingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Opret Møde'),
      content: Text('Udfyld detaljerne for dit møde.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), // Luk dialogen
          child: Text('Annuller'),
        ),
        TextButton(
          onPressed: () {}, // Tilføj handling her
          child: Text('Opret'),
        ),
      ],
    );
  }
}
