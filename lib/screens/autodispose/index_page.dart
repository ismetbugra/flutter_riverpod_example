import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class IndexPage extends ConsumerWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Index Page")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push("/counter");
              },
              child: Text("Index page"),
            ),
          ],
        ),
      ),
    );
  }
}
