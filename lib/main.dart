import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_click/src/providers/counter.provider.dart';

import 'src/screens/homepage.screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CounterProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: "State management"),
      debugShowCheckedModeBanner: false,
    );
  }
}
