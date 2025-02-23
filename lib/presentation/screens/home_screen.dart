import 'package:flutter/material.dart';
import 'package:meeting_counter/presentation/dialogs/create_meeting_dialog.dart';
import 'package:meeting_counter/presentation/widgets/round_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Screen"),
            RoundButton(
              size: 50.0,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CreateMeetingDialog(),
                );
              },
              icon: Icons.add,
            ),
          ],
        ),
      ),
    );
  }
}
