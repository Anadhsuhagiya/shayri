import 'package:flutter/material.dart';
import 'package:shayri/third.dart';

import 'Module.dart';

class second extends StatefulWidget {
  String category;
  var photo;
  int pos;

  second(this.pos, this.category, this.photo);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List<String> l = [];

  @override
  void initState() {
    super.initState();

    if (widget.pos == 0) {
      l = Module.congrats;
    } else if (widget.pos == 1) {
      l = Module.Dosti;
    } else if (widget.pos == 2) {
      l = Module.God;
    } else if (widget.pos == 3) {
      l = Module.Life;
    } else if (widget.pos == 4) {
      l = Module.Love;
    } else if (widget.pos == 5) {
      l = Module.Politics;
    } else if (widget.pos == 6) {
      l = Module.sad;
    } else if (widget.pos == 7) {
      l = Module.Birth;
    } else if (widget.pos == 8) {
      l = Module.Prerana;
    } else if (widget.pos == 9) {
      l = Module.Yaad;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000A9F),
        title: Text(widget.category),
      ),
      body: ListView.builder(
        itemCount: Module().id.length,
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
                        image: AssetImage(widget.photo), fit: BoxFit.cover)),
              ),
              title: Text(
                l[index],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return third(l,index);
                  },
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
