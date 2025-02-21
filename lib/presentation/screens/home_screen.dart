import 'package:flutter/material.dart';
import 'package:meeting_counter/presentation/dialogs/create_meeting_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(child: Text("Home Screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => CreateMeetingDialog(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
