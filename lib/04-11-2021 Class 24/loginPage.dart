import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:miniproject/04-11-2021%20Class%2024/Desdboard.dart';
import 'package:miniproject/04-11-2021%20Class%2024/PrecovaryPage.dart';
import 'package:miniproject/04-11-2021%20Class%2024/RegistrationPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            children: [
              Image.asset('assets/logo.png',height: 250,width: 350,),
              Text("Sign In",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),

              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name'

                ),

              ),
              SizedBox(height: 20,),

              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'

                ),

              ),

              SizedBox(height: 20,),
              RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>PrecovaryPage()));


              },child: Text("Forget Password"),),
              SizedBox(height: 20,),

              RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Desdboard()));


              },child: Text("LogIn, "),),
              SizedBox(height: 20,),
              Text("Dont Have"),
              SizedBox(height: 20,),

              RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));


              },child: Text("SignUp"),),

            ],
          ),
        ),
      ),
    );
  }
}
