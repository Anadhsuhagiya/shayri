import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayri/First.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shayri/login.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    go();

  }



  go() async {

    var status = await Permission.storage.status;
    var status1 = await Permission.camera.status;

    if(status.isDenied || status1.isDenied)
      {
        Map<Permission, PermissionStatus> statuses = await [
          Permission.camera,
          Permission.storage,
        ].request();
      }

    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return Login();
      },
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 300,
              width: 200,
              child: Lottie.network('https://assets8.lottiefiles.com/packages/lf20_1a8dx7zj.json')),
        ),
      ],
    ));
  }
}
