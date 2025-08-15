import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateDisposeProvider = StateProvider.autoDispose<int>((ref) {
  //ref.keepAlive(); // autodispose devre dışı kalır, provider veya statei temizlememizi engeller
  final cache = ref.keepAlive();
  final timer = Timer(Duration(seconds: 10), () => cache.close());
  ref.onDispose(() => timer.cancel());
  return 0;
});

// autoDispose olmasa, önceki sayfaya döndüğümüzde state değeri kaldığı yerden devam adiyordu.
// auto dispose provider veya stati temizler

//autoDispose → provider kullanılmadığında hemen sil.
//
// keepAlive() → hemen silme, kontrol bende.
//
// cache.close() → tamam artık silebilirsin.
//
// onDispose() → temizleme kodu burada.

//Provider başlatılır → başlangıç değeri 0.
//
// autoDispose normalde provider kullanılmayınca hemen dispose eder.
//
// Ama ref.keepAlive() çağrısı yapıldığı için provider hemen dispose edilmez.
//
// Bir Timer başlatılır → 10 saniye sonra cache.close() çalışır, bu da provider’ın hafızadan atılmasını sağlar.
//
// Eğer provider o 10 saniye içinde manuel olarak dispose edilirse, onDispose() devreye girer ve timer.cancel() ile gereksiz zamanlayıcı iptal edilir.
