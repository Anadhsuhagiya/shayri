import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayri/Module.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:ui' as ui;

class edit extends StatefulWidget {
  List<String> l = [];
  int index;

  edit(this.l, this.index);

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  Color bgcolor = Color(0xFF000A9F);
  Color textcolor = Colors.white;
  double fontsize = 20;
  String Afont = Module.font[0];
  String stremoji = '😂🤣😂🤣😂🤣😂🤣';
  String myFolderpath = "";

  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createFolder();
    pageController = PageController(initialPage: widget.index);
  }

  createFolder()
  async {
    Directory? directory = await getExternalStorageDirectory();  // create folder in mobile for store images etc
    print(directory!.path); ///storage/emulated/0/Android/data/com.example.shayri/files // file craeting path

    String folderPath = "${directory.path}/Anadh"; // in app folder make another folder
    String Folder = "/storage/emulated/0/Download/Anadh"; // Created folder in other directory

    Directory myFolder = Directory(folderPath);
    Directory MyFolder = Directory(Folder);  // make folder in other directory [Download]

    if(await myFolder.exists())
    {
      print("Already Exist");
    }
    else
    {
      await myFolder.create();
      print("Created");
    }

    if(await MyFolder.exists())
    {
      print("Already Exist");
    }
    else
    {
      await MyFolder.create();
      print("Created");
    }
    myFolderpath = MyFolder.path;
  }

  GlobalKey globalKey = GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
      globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
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
            ],
          ),
          Expanded(
                child: PageView.builder(
              itemCount: widget.l.length,
              onPageChanged: (value) {
                widget.index = value;
                setState(() {

                });
              },
              itemBuilder: (context, index) {
                return ListView(
                  children: [
                    RepaintBoundary(
                      key: globalKey,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: bgcolor,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          '${stremoji},\n${widget.l[widget.index]}\n${stremoji}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: fontsize, color: textcolor, fontFamily: Afont),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // showModalBottomSheet(
                  //   isDismissible: false,
                  //     barrierColor: Colors.transparent,
                  //     context: context,
                  //     builder: (context) {
                  //       return SizedBox(
                  //         height: 300,
                  //         width: double.infinity,
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Expanded(
                  //               child: GridView.builder(
                  //                   itemCount: Module.color.length,
                  //                   gridDelegate:
                  //                   SliverGridDelegateWithFixedCrossAxisCount(
                  //                       crossAxisCount: 5,
                  //                       crossAxisSpacing: 5,
                  //                       mainAxisSpacing: 5),
                  //                   itemBuilder: (context, index) {
                  //                     return InkWell(
                  //                       onTap: () {
                  //                         setState(() {
                  //                           bgcolor = Module.color[index];
                  //                         });
                  //                       },
                  //                       child: Container(
                  //                         color: Module.color[index],
                  //                       ),
                  //                     );
                  //                   }),
                  //             ),
                  //             IconButton(onPressed: () {
                  //               Navigator.pop(context);
                  //             }, icon: Icon(Icons.close))
                  //           ],
                  //         )
                  //       );
                  //     });
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: ColorPicker(pickerColor: bgcolor, onColorChanged: (value) {
                          bgcolor = value;
                          setState(() {

                          });
                        },),
                      ),
                    );
                  },);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xFF000A9F),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Background',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ), //background
              InkWell(
                onTap: () {
                  // showModalBottomSheet(
                  //     context: context,
                  //     builder: (context) {
                  //       return SizedBox(
                  //         height: 300,
                  //         width: double.infinity,
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Expanded(
                  //               child: GridView.builder(
                  //                   itemCount: Module.color.length,
                  //                   gridDelegate:
                  //                   SliverGridDelegateWithFixedCrossAxisCount(
                  //                       crossAxisCount: 5,
                  //                       crossAxisSpacing: 5,
                  //                       mainAxisSpacing: 5),
                  //                   itemBuilder: (context, index) {
                  //                     return InkWell(
                  //                       onTap: () {
                  //                         setState(() {
                  //                           textcolor = Module.color[index];
                  //                         });
                  //                       },
                  //                       child: Container(
                  //                         color: Module.color[index],
                  //                       ),
                  //                     );
                  //                   }),
                  //             ),
                  //             IconButton(onPressed: () {
                  //               Navigator.pop(context);
                  //             }, icon: Icon(Icons.close))
                  //           ],
                  //         )
                  //       );
                  //     });
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: ColorPicker(pickerColor: textcolor, onColorChanged: (value) {
                          textcolor = value;
                          setState(() {

                          });
                        },),
                      ),
                    );
                  },);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xFF000A9F),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Text Color',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _capturePng().then((value) async {

                    DateTime dt = DateTime.now();
                    String Time = "${dt.year}${dt.month}${dt.day}${dt.hour}${dt.minute}${dt.second}";

                    String imagepath = "${myFolderpath}/Image$Time.jpg";
                    File file = File(imagepath);

                    await file.create();
                    file.writeAsBytesSync(value);
                    Share.shareFiles([file.path], text: 'This Image was Created by Anadh Suhagiya');

                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xFF000A9F),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Share',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),//share
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: false,
                      builder: (context) {
                        return SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: Module.font.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Afont = Module.font[index];
                                        setState(() {});
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        color: Color(0xFF000A9F),
                                        child: Text(
                                          'hello',
                                          style: TextStyle(
                                              fontFamily: Module.font[index],
                                              color: Colors.white,
                                              fontSize: 30),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              IconButton(onPressed: () {
                                Navigator.pop(context);
                              }, icon: Icon(Icons.close))
                            ],
                          )
                        );
                      });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xFF000A9F),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Font',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ), //font
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text('${Module.Emoji[index]}'),
                                        onTap: () {
                                          setState(() {
                                            stremoji = Module.Emoji[index];
                                          });
                                        },
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return Divider(thickness: 4);
                                    },
                                    itemCount: Module.Emoji.length),
                              ),
                              IconButton(onPressed: () {
                                Navigator.pop(context);
                              }, icon: Icon(Icons.close))
                            ],
                          )
                        );
                      });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xFF000A9F),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Emoji',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ), //Emoji
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: true,
                      builder: (context) {
                        return SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: StatefulBuilder(builder: (context, setState1) {
                            return Slider(
                              onChangeEnd: (value) {
                                Navigator.pop(context);
                              },
                              activeColor: Color(0xFF000A9F),
                              inactiveColor: Colors.black12,
                              min: 10,
                              max: 50,
                              value: fontsize,
                              onChanged: (value) {
                                setState(() {
                                  setState1(() {
                                    fontsize = value;
                                  });
                                });
                              },
                            );
                          }),
                        );
                      });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Color(0xFF000A9F),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Text Size',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ), //Font Size
            ],
          ),
        ],
      ),
    );
  }
}
