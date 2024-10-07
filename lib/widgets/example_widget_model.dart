import 'package:flutter/material.dart';

class ExampleWidgetModel extends ChangeNotifier {
  void readFile() async {}
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
