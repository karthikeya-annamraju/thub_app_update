// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:thub_app_update/Payment/payment.dart';
import 'Payment/payment2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Payment(),
    );
  }
}
