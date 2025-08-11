import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_kullanimi/providers/state_notifier_provider.dart';
import 'package:riverpod_kullanimi/providers/state_provider.dart';

class StateNotifierPage extends ConsumerWidget {
  const StateNotifierPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterStateNotifier = ref.watch(counterStateProviderNotifier);

    // provider metodlarına erişim
    final counterMetods = ref.read(counterStateProviderNotifier.notifier);
    return Scaffold(
      appBar: AppBar(title: Text("State Provider Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(counterStateNotifier.toString())],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              //ref.read(counterStateProviderNotifier.notifier).increment();
              counterMetods.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // oluşturduğumuz global değişkenle tanınmladığımız sınıfa erişir ve fonksiyonlarını kullahnor
              //ref.read(counterStateProviderNotifier.notifier).reset();
              counterMetods.reset();
            },
            child: Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
            onPressed: () {
              //ref.read(counterStateProviderNotifier.notifier).decrement();
              counterMetods.decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
