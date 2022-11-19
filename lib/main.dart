import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_puzzle/counter_provider.dart';
import 'package:word_puzzle/provider.dart';
import 'package:word_puzzle/word_puzzle_scrren.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> CouProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: CounterProvider(),
    );
  }
}
