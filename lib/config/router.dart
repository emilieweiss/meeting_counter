import 'package:go_router/go_router.dart';
import '../presentation/screens/home_screen.dart';
import '../presentation/screens/meeting_list_screen.dart';
import '../presentation/screens/ongoing_meeting_screen.dart';
import '../presentation/screens/settings_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/', // Startside
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/meeting_list',
      builder: (context, state) => const MeetingList(),
    ),
    GoRoute(
      path: '/ongoing_meeting',
      builder: (context, state) => const OngoingMeeting(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
