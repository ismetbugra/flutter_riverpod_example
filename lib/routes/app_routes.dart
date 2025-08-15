import 'package:go_router/go_router.dart';
import 'package:riverpod_kullanimi/screens/autodispose/counter_autodispose_page.dart';
import 'package:riverpod_kullanimi/screens/autodispose/index_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => IndexPage()),
    GoRoute(
      path: "/counter",
      builder: (context, state) => CounterAutodisposePage(),
    ),
  ],
);
