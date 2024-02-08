import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:love/pages/splash_page.dart';

class IntroScreenDefault extends StatefulWidget {
  @override
  IntroScreenDefaultState createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "fsgfsgf",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: "assets/images/pen.jpeg",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "PENCIL",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/images/pen.jpeg",
        backgroundColor: Color(0xff203152),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/images/pen.jpeg",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void
   onDonePress() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
    (context) => SplashPage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}