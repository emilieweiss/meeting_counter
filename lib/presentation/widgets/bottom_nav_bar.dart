import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("🔥 BottomNavBar build() kaldes!");

    return SafeArea(
      child: BottomNavigationBar(
        currentIndex: _getCurrentIndex(context),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.go('/meeting_list');
              break;
            case 2:
              context.go('/ongoing_meeting');
              break;
            case 3:
              context.go('/settings');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Startside'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Liste'),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'Igangværende',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Indstillinger',
          ),
        ],
      ),
    );
  }

  int _getCurrentIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    print("📍 Current route: $location"); // DEBUGGING

    if (location.startsWith('/meeting_list')) return 1;
    if (location.startsWith('/ongoing_meeting')) return 2;
    if (location.startsWith('/settings')) return 3;
    return 0;
  }
}
