import 'package:flutter_riverpod/flutter_riverpod.dart';

final providerFamily = Provider.family<String, int>((ref, arg) {
  return 'Hello, ${arg * 6}';
});

//.family versiyonu, parametre alabilen bir provider oluşturur.
// Yani bir nevi “fonksiyon gibi çalışan” provider diyebilirsin.

//Provider.family<String, int>
//
// İlk String → Bu provider’ın döndüreceği veri tipi.
//
// İkinci int → Bu provider’a dışarıdan verilecek parametre tipi.
//
// (ref, arg)
//
// ref: Provider içindeki diğer provider’lara erişmek veya dinlemek için kullanılır.
//
// arg: .family sayesinde dışarıdan gönderilen parametre.
// Burada int tipinde olduğu için örn. 3, 10 gibi sayılar gönderebilirsin.
//
// return 'Hello, ${arg * 6}';
//
// Parametreyi (arg) alıp 6 ile çarpıyor,
// sonra 'Hello, ...' ile birleştirerek String döndürüyor.

//Provider.family genellikle aynı mantığa sahip ama farklı parametrelerle çalışması gereken provider’lar gerektiğinde kullanılır.
