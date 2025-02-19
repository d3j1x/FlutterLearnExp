import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});
  @override
  State<Test> createState() => _TestState();
}




class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: ElevatedButton(
              child: Text("Show Alert"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          FloatingActionButton(
                              onPressed: () {
                                print("Ok");
                              },
                              child: Text("Ok")),
                          FloatingActionButton(
                              onPressed: () {
                                print("Cancel");
                              },
                              child: Text("Cancel"))
                        ],
                        backgroundColor: Colors.green,
                        actionsPadding: EdgeInsets.all(30),
                        titlePadding: EdgeInsets.all(20), //
                        title: Text("Title"),
                        titleTextStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.all(20),
                        content: Text("Content"),
                        contentTextStyle: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      );
                    });
              })),
    );
  }
}





class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text("\$mrt Mrk\€t",
          style: TextStyle(
              fontSize: 50,
              color: Color(0xFF021aee),
              letterSpacing: 10.0,
              wordSpacing: 10.0,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.lightGreen,
              shadows: [
                Shadow(
                    color: Colors.red,
                    blurRadius: 1.0,
                    offset: Offset(50.0, 50.0)),
              ])),
    );
  }
}

