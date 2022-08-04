import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//StateProvider, not Provider.
final counterProvider = StateProvider((ref) => 0);

class StateProviderSample extends HookConsumerWidget {
  const StateProviderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateNotifier"),
      ),
      body: Center(
        child: Text("Count: ${ref.watch(counterProvider)}"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
      ),
    );
  }
}
