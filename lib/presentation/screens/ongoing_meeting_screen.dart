import 'package:flutter/material.dart';
import 'package:meeting_counter/presentation/widgets/counter_button.dart';

class OngoingMeetingScreen extends StatelessWidget {
  const OngoingMeetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ongoing Meeting")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ongoing Meeting", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            CounterButton(name: "Meeting Counter"), // Tilføjet knap
          ],
        ),
      ),
    );
  }
}
