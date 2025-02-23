import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateMeetingDialog extends StatelessWidget {
  final String routeName; // Til styring af route fra dialog

  const CreateMeetingDialog({Key? key, required this.routeName})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Opret Møde'),
      content: Text('Udfyld detaljerne for dit møde.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Annuller'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            GoRouter.of(context).go(routeName);
            context.go(routeName);
          },
          child: Text("Opret møde"),
        ),
      ],
    );
  }
}
