import 'package:flutter/material.dart';
import 'package:insurence_dart/insurancesc2.dart';
import 'package:insurence_dart/insurencesc1.dart';
import 'package:insurence_dart/insurencesc2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InsurenceScreen2()
    );
  }
}

