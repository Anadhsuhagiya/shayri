import 'package:flutter/material.dart';

class Privacy_policy extends StatefulWidget {
  const Privacy_policy({Key? key}) : super(key: key);

  @override
  State<Privacy_policy> createState() => _Privacy_policyState();
}

class _Privacy_policyState extends State<Privacy_policy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 216,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.yellow, boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(2, 0),
                  blurRadius: 15,
                  blurStyle: BlurStyle.normal
                )
              ]),
              alignment: Alignment.topCenter,
              child: Image.network(
                  'https://blog.ipleaders.in/wp-content/uploads/2020/10/bluestar_webbox_privacy-policy_1024x512_1218_V1_PRESS.jpg'),
            ),

            Container(
                height: 600,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Color(0xff888888),
                      offset: Offset(0, 5),
                      blurRadius: 15,
                      blurStyle: BlurStyle.normal
                  )
                ]),
              child: Column(
                children: [
                  Text("pri")
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}
