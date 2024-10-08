import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as PathProvider;


// PathProvider.getApplicationSupportDirectory();
// PathProvider.getTemporaryDirectory();
// PathProvider.getLibraryDirectory();
class ExampleWidgetModel extends ChangeNotifier {
  void readFile() async {
    final directory = await PathProvider.getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/my_file';
    final file = File(filePath);
    final result = await file.readAsString();
    print(result);
  }
}

class ExampleWidgetModelProvider extends InheritedNotifier {
  final ExampleWidgetModel model;
  const ExampleWidgetModelProvider({
    super.key,
    required this.model,
    required super.child,
  }) : super(notifier: model);

  static ExampleWidgetModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ExampleWidgetModelProvider>();
  }

  static ExampleWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ExampleWidgetModelProvider>()
        ?.widget;
    return widget is ExampleWidgetModelProvider ? widget : null;
  }
}
