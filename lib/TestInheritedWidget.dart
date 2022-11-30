



import 'package:damoclesimage/ShareDataWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestInheritedWidget extends StatefulWidget {
  const TestInheritedWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TestInheritedWidgetState();
  }

}

class TestInheritedWidgetState extends State {
  Person person = Person('sss', 11);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: InheritedDataWidget(
          person: person,
          child: Text(
            '${InheritedDataWidget.of(context)?.person.toString()}',
            style: const TextStyle(
              color: Color(0x00ffffff),
              fontSize: 20
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              person = Person('tttt', 22);
            });
          },
        ),
      );
  }

}