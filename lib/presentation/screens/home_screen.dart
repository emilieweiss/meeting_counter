import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => context.go('/ongoing_meeting'),
                child: Text('Ongoing meeting'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => context.go('/meeting_list'),
                child: Text('Meeting List'),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => context.go('/settings'),
                child: Text('Settings'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
