import 'dart:async';
import 'package:baemin_clone/screen/home_screen.dart';
import 'package:flutter/material.dart';

class loading_screen extends StatefulWidget {
  const loading_screen({Key? key}) : super(key: key);

  @override
  State<loading_screen> createState() => _loading_screenState();
}

class _loading_screenState extends State<loading_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => home_screen()));
    });
    //deactivate();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    //dispose();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'asset/baemin_loading.jpeg',
          width: 300,
          height: 150,
        ),
      ),
    );
  }
}
