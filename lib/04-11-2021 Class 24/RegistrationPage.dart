import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  int _value = 1;
  var nameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var formkey = GlobalKey <FormState>();

  _handleRegisterBotton(){
    if(formkey.currentState!.validate()){
      formkey.currentState!.save();
      print("Name is ${this.first_name}");
      print("Name is ${this.last_name}");
      print("Name is ${this.email}");
      print("Name is ${this.password}");
      print("Name is ${this.confirmpassword}");
    }
  }
  var first_name, last_name, email, password, confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 30,left: 30),
            child: Column(
              children: [

                SizedBox(height: 30,),
                Text("Registration Here",style: TextStyle(fontSize: 30),),

                Form(
                    key: formkey,
                    child: Column(

                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Fist Name'),
                      validator: (value){
                        if(value!. isEmpty){
                          return("Please Enter Name Here First");
                        }
                      },
                      onSaved: (val){
                        this.first_name =val;
                      },

                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: lastNameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Last Name'),

                      validator: (value){
                        if(value!. isEmpty){
                          return("Please Enter Name Here last");
                        }
                      },
                      onSaved: (val){
                        this.last_name =val;
                      },

                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Your Mail'

                      ),

                      validator: (value){
                        if(value!. isEmpty){
                          return("Please Enter Here Mail");
                        }
                      },
                      onSaved: (val){
                        this.email =val;
                      },

                    ),
                    SizedBox(height: 20,),

                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'

                      ),

                      validator: (value){
                        if(value!. isEmpty){
                          return("Please Enter Here Password");
                        }
                      },
                      onSaved: (val){
                        this.password =val;
                      },

                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password'

                      ),
                      validator: (value){
                        if(value!. isEmpty){
                          return("Please Enter Here Confirm Password");
                        }
                      },
                      onSaved: (val){
                        this.confirmpassword =val;
                      },

                    ),
                    SizedBox(height: 20,),


                    Row(
                      children: [

                        Text("Gender"),
                        Row(
                          children: [
                            Radio(value: 1, groupValue: _value, onChanged: (valuex){
                              setState(() {

                              });
                            })

                          ],
                        ),
                        Text("Male"),
                        Row(
                          children: [
                            Radio(value: 2, groupValue: _value, onChanged: (valuex){
                              setState(() {
                                valuex=_value;
                              });
                            })
                          ],
                        ),
                        Text("Female"),
                      ],
                    ),



                    DropdownButtonFormField(
                        hint: Text("Select Your Age"),

                        onChanged: (value){
                          setState(() {
                            print(value);
                          });

                        },

                        items: [


                          DropdownMenuItem(child: Text("16-18 Years"),
                            value: '16-18',
                          ),
                          DropdownMenuItem(child: Text("18-22 Years"),
                            value: '18-22',
                          ),                    DropdownMenuItem(child: Text("23-30 Years"),
                            value: '23-30',
                          ),                    DropdownMenuItem(child: Text("30-50 Years"),
                            value: '30-50',
                          ),


                        ]),
                    SizedBox(height: 40,),
                    RaisedButton(onPressed: _handleRegisterBotton,
                        child: Text("Register",style: TextStyle(color:Colors.white),),color: Colors.red
                    ),



                  ],

                ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}

