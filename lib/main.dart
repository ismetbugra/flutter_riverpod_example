import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_kullanimi/routes/app_routes.dart';
import 'package:riverpod_kullanimi/screens/future_state_provider_page.dart';
import 'package:riverpod_kullanimi/screens/provider_family_page.dart';
import 'package:riverpod_kullanimi/screens/state_provider_page.dart';

void main() {
  // providerscope kullanılmalı
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: appRouter);
  }
}
