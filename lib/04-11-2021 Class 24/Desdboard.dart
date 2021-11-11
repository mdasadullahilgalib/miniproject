import 'package:flutter/material.dart';

class Desdboard extends StatefulWidget {
  const Desdboard({Key? key}) : super(key: key);

  @override
  _DesdboardState createState() => _DesdboardState();
}

class _DesdboardState extends State<Desdboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Page Building Now.......",style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
