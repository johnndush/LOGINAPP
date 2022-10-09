import 'package:example1/rifkinscollege.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const Rifkins();
          }));
        },
        child: Text('welcome to rifkins'),
      ),
    );
  }
}
