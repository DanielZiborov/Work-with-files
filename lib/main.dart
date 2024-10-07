import 'package:flutter/material.dart';
import 'package:work_with_files_and_directories/widgets/example_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExampleWidget(),
    );
  }
}

