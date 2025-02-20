import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OngoingMeeting extends StatelessWidget {
  const OngoingMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ongoing Meeting')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: Text('Home'),
        ),
      ),
    );
  }
}
