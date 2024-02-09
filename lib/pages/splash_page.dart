import 'dart:async';

import 'package:flutter/material.dart';

import 'FLAMES.dart';

void main() {
  runApp(SplashPage());
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPageView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPageView extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashPageView> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
        title: const Center(
          child: Text("Love"),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Column(
          children: [

            InkWell(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder:
                        (context) => FLAMES()
                    ));
              },
              child:Image.asset('assets/images/pen.jpeg',width: 200,height: 200,) ,)
            ,
      InkWell(
        onTap: (){
          print("object");
        },
        child:
            Image.asset('assets/images/pen.jpeg',width: 200,height: 200,)),
      InkWell(
        onTap: (){
          print("object");
        },
        child:
            Image.asset('assets/images/pen.jpeg',width: 200,height: 200,)),
          ],
        ),
      ),
    );
  }
}
