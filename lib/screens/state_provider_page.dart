import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_kullanimi/providers/state_provider.dart';

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch anlık izleme yapar
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(title: Text("State Provider Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("$counter")],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // read fonksiyonu da fonksiyon çagırmamızı veya statei değiştirmemizi sağlar
              ref.read(counterStateProvider.notifier).state++;
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateProvider.notifier).state--;
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
