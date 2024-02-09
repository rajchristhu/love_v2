import 'package:flutter/material.dart';

class FLAMES extends StatefulWidget {
  FLAMES({Key? key}) : super(key: key);

  @override
  State<FLAMES> createState() => _FLAMESState();
}

class _FLAMESState extends State<FLAMES> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Container(
          color: Colors.blueGrey,
          padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: nameController,

                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10),child:  TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Userpassword',
                    hintText: 'Enter Your password',
                  ),
                ),),

                ElevatedButton(onPressed: onPressed, child: Text('submit'))
              ],
            )


        ) ,
      ),
    )
    ;
  }
  onPressed() {
   print(nameController.text.toString());
  }

  }

