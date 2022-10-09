import 'package:example1/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

// ignore: prefer_typing_uninitialized_variables
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPagestate();
}

class _RootPagestate extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var Const;
    return Scaffold(
      body: const HomePage(),
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          'REENA LUSIKE',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action button');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) => setState(
                () => currentPage = index,
              ),
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Color(0xff36237e)),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favourite",
              backgroundColor: Color(0xff6b4340),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "chat",
                backgroundColor: Color(0xff77a841)),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
              backgroundColor: Colors.green,
            ),
          ]),
    );
  }
}
