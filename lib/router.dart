import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meeting_counter/presentation/widgets/bottom_nav_bar.dart';
import 'package:meeting_counter/presentation/screens/home_screen.dart';
import 'package:meeting_counter/presentation/screens/meeting_list_screen.dart';
import 'package:meeting_counter/presentation/screens/ongoing_meeting_screen.dart';
import 'package:meeting_counter/presentation/screens/settings_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        print("🔥 ShellRoute builder() kører!"); // DEBUGGING
        return Scaffold(body: child, bottomNavigationBar: BottomNavBar());
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
        GoRoute(
          path: '/meeting_list',
          builder: (context, state) => const MeetingListScreen(),
        ),
        GoRoute(
          path: '/ongoing_meeting',
          builder: (context, state) => const OngoingMeetingScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);
