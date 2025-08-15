import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_kullanimi/providers/provider_family.dart';

class ProviderFamilyPage extends ConsumerWidget {
  const ProviderFamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(providerFamily(7));
    return Scaffold(
      appBar: AppBar(title: Text("Provider Family Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Provider family page: $value")],
        ),
      ),
    );
  }
}
