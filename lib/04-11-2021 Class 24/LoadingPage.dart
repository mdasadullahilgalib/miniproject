import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:miniproject/04-11-2021%20Class%2024/loginPage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>loginPage()), (route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/image.jpg',),
            SizedBox(height: 30,),
            SpinKitFoldingCube(color:Colors.deepOrange),
            SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}
