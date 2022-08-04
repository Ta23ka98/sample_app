import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/presentation/counter_notifier.dart';
import 'package:sample_app/presentation/counter_page/counter_page.dart';
import 'package:sample_app/presentation/first_page/first_page.dart';
import 'package:sample_app/presentation/provider_sample/provider_sample.dart';
import 'package:sample_app/presentation/state_provider_sample/state_provider_sample.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StateProviderSample(),
    );
  }
}
