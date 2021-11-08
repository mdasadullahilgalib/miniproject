import 'package:flutter/material.dart';

class PrecovaryPage extends StatefulWidget {
  const PrecovaryPage({Key? key}) : super(key: key);

  @override
  _PrecovaryPageState createState() => _PrecovaryPageState();
}

class _PrecovaryPageState extends State<PrecovaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Text("Recovary password",style: TextStyle(fontSize: 30),),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Mail'

            ),

          ),
        ],
      ),
    );
  }
}
