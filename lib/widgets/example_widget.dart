import 'package:flutter/material.dart';
import 'package:work_with_files_and_directories/widgets/example_widget_model.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({super.key});

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  final model = ExampleWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ExampleWidgetModelProvider(
            model: model,
            child: const Column(
              children: [
                _ReadFileButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ReadFileButton extends StatelessWidget {
  const _ReadFileButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ExampleWidgetModelProvider.read(context)!.model.readFile,
      child: const Text("Прочитать файл"),
    );
  }
}
