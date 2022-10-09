import 'package:flutter/material.dart';

class Rifkins extends StatefulWidget {
  const Rifkins({Key? key}) : super(key: key);

  @override
  State<Rifkins> createState() => _Rifkins();
}

class _Rifkins extends State<Rifkins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME TO RIFKINS ICT '),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
