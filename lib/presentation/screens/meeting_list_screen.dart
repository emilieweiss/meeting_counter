import 'package:flutter/material.dart';

class MeetingList extends StatelessWidget {
  const MeetingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meeting List')),
      body: Center(child: Text('This is the Meeting List Screen')),
    );
  }
}
