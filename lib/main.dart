import 'package:flutter/material.dart';
import 'package:json_parsing/json_parsing_simple.dart';
import 'package:json_parsing/mapped_data.dart';
import 'package:json_parsing/shared.dart';
import 'package:json_parsing/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home:Users(),
    );
  }
}

