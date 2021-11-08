import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var _val = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Registration Here",style: TextStyle(fontSize: 30),),

            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fist Name'

              ),

            ),
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name'

              ),

            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Mail'

              ),

            ),
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'

              ),

            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password'

              ),

            ),
            SizedBox(height: 20,),

            //==============================================================================
            Row(
              children: [
                Radio(value: 1, groupValue: _val, onChanged: (value){

                  setState(() {
                    value = _val;
                  });


                }),
                SizedBox(width: 10,),
                Text("Male")

              ],
            ),
            SizedBox(width: 20,),
            //===============================================================================
            Row(
              children: [
                Radio(value: 2, groupValue: _val, onChanged: (value){

                  setState(() {
                    value=_val;
                    print('${_val}');
                  });


                }),
                SizedBox(width: 10,),
                Text("Female"),

              ],
            ),

            //=================================================================================
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
            //====================================================================================



          ],
        ),
      ),
    );
  }
}
