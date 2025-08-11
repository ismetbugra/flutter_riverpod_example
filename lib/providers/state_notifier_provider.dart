import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  // sınıf yapısı oalrak kullanabilme int bool vs dışında liste tipi de alabilme
  // fonksiyonlarla işlem yapabilme

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}

// global değişkenimiz
final counterStateProviderNotifier =
    StateNotifierProvider<CounterStateNotifier, int>(
      (ref) => CounterStateNotifier(),
    );

//ref.watch(counterStateProviderNotifier) → sadece state değerini (int olan kısmı) verir.
//
// ref.read(counterStateProviderNotifier.notifier) → state’in arkasındaki yönetici sınıfa (CounterStateNotifier) erişmeni sağlar.
