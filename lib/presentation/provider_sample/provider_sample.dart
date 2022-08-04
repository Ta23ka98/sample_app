import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Trying the most basic; Provider and StateProvider.
final appNameProvider = Provider((ref) => "ProviderSample");

//This time, I need to use StateProvider();
//And then, use ref.watch and change it.
final counterProvider = StateProvider((ref) => 10);
final counterPlusTenProvider = Provider((ref) {
  final count = ref.watch(counterProvider);
  return count * 10;
});

class ProviderSample extends HookConsumerWidget {
  const ProviderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Need to ref.watch providers.
    final appName = ref.watch(appNameProvider);
    final plusTenCount = ref.watch(counterPlusTenProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Center(
        child: Text("Plus 10:${plusTenCount}"),
      ),
    );
  }
}
