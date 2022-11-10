import 'package:flutter/material.dart';
import 'package:shayri/Module.dart';
import 'package:shayri/Privacy_policy.dart';
import 'package:shayri/favourite.dart';
import 'package:shayri/second.dart';
import 'package:getwidget/getwidget.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: GFDrawer(
          color: Color(0xFF000A9F),
          child: ListView(
            padding: EdgeInsets.only(top: 5, left: 5, right: 5),
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 10),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return first();
                  },));
                },
                child: Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(3),
                    subtitle: Text("Back to home"),
                    leading: Icon(
                      Icons.home,
                      color: Colors.brown,
                    ),
                    title: Text(
                      'Home',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onTap: null,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return favourite();
                  },));
                },
                child: Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(3),
                    subtitle: Text("Check Favourites list"),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    title: Text(
                      'Favourites',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onTap: null,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return first();
                  },));
                },
                child: Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(3),
                    subtitle: Text(
                        "If you love our app. Please take a moment to rate and review it"),
                    leading: Icon(
                      Icons.star_rate,
                      color: Color(0xffffb100),
                    ),
                    title: Text(
                      'Rate Us',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onTap: null,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return first();
                  },));
                },
                child: Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(3),
                    subtitle: Text("Support us by Sharing the app with friends"),
                    leading: Icon(
                      Icons.share,
                      color: Color(0xff000000),
                    ),
                    title: Text(
                      'Share with friends',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onTap: null,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Privacy_policy();
                  },));
                },
                child: Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(3),
                    subtitle: Text("Read our Privacy and Policy"),
                    leading: Icon(
                      Icons.security,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Privacy & Policy',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onTap: null,
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Shayri',
            style: TextStyle(
                color: Colors.white, letterSpacing: 1.0, fontSize: 20),
          ),
          backgroundColor: Color(0xFF000A9F),
        ),
        body: ListView.builder(
          itemCount: Module().category.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xDBFFFFFF),
              child: ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(Module().photo[index]),
                          fit: BoxFit.cover)),
                ),
                title: Text(Module().category[index],
                    style: TextStyle(fontFamily: 'fonts/Poppins-SemiBold.ttf')),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return second(index, Module().category[index],
                          Module().photo[index]);
                    },
                  ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
