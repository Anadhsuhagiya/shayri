import 'package:flutter/material.dart';
import 'package:shayri/Module.dart';
import 'package:share_plus/share_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:clipboard/clipboard.dart';
import 'package:shayri/edit.dart';
import 'package:swipe/swipe.dart';


class third extends StatefulWidget {
  List<String> l = [];
  int index;

  third(this.l, this.index);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000A9F),
        title: Text(
          'Shayri',
          style: TextStyle(fontFamily: 'fonts/Poppins-SemiBold.ttf'),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 60,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF000A9F),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Share.share(
                          'Checkout my Shayri ---->>> \n${widget.l[widget.index]}');
                      setState(() {});
                    },
                    child: Icon(Icons.share_rounded)),
              ),
              Container(
                height: 60,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFF000A9F),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text(
                  '${widget.index + 1}/${widget.l.length}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 60,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF000A9F),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return edit(widget.l, widget.index);
                        },
                      ));
                    },
                    child: Icon(
                      Icons.edit,
                      size: 30,
                    )),
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              itemCount: widget.l.length,
              controller: pageController,
              onPageChanged: (value) {
                widget.index = value;
                setState(() {

                });
              },
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(30),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF000A9F)),
                  child: Text(
                    widget.l[widget.index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF000A9F),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      if (widget.index > 0) {
                        widget.index--;
                      } else {
                        widget.index = widget.l.length - 1;
                      }
                      pageController.jumpToPage(widget.index);
                      setState(() {});
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 30,
                    )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF000A9F),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      FlutterClipboard.copy('${widget.l[widget.index]}')
                          .then((value) {
                        print('Copy');
                        Fluttertoast.showToast(
                            msg: 'Copied...',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 17);
                      });
                      setState(() {});
                    },
                    child: Icon(Icons.copy)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF000A9F),
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      setState(() {
                        if (widget.index < widget.l.length - 1) {
                          widget.index++;
                        } else {
                          widget.index = 0;
                        }
                        pageController.jumpToPage(widget.index);
                      });
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
