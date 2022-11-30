

import 'package:flutter/cupertino.dart';

class InheritedDataWidget extends InheritedWidget {
  final Person person;

  const InheritedDataWidget({Key? key, required this.person, required child})
      : super(key: key, child: child);

  static InheritedDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    if(oldWidget is InheritedDataWidget) {
      return person.name != oldWidget.person.name;
    } else {
      return true;
    }

  }

}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return "我叫${this.name},今年${this.age}了";
  }

}
