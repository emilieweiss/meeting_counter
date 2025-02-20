import 'package:flutter/material.dart';

class OngoingMeeting extends StatelessWidget {
  const OngoingMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ongoing Meeting')),
      body: Center(child: Text('This is the Ongoing Meeting Screen')),
    );
  }
}
