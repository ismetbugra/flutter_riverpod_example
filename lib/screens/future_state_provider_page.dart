import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/user_future_provider.dart';

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // veriler future provider ile asenkron çekiliyor
    final userAsync = ref.watch(userFutureProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Future Provider Page')),
      // when riverpoda özgü bir fonksiyon
      body: userAsync.when(
        data: (users) {
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text('${user.firstName} ${user.lastName}'),
                subtitle: Text(user.email),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Text("Bir Hata Meydana Geldi: $error");
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
