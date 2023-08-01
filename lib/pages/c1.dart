import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  bool n = true;

  File? image;

  ImagePicker pi = ImagePicker();
  imageformcomer() async {
    var fol = await pi.pickImage(source: ImageSource.camera);

    // if (Golbal.image2 != null) {
      setState(() {
        Golbal.image2  = File(fol!.path);
      });
  }

  Widget lol(String co, bool m) {
    return (m)
        ? Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 2,
            alignment: Alignment.center,
            child: Text(
              "$co",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 4,
                ),
              ),
            ),
          )
        : Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 2,
            alignment: Alignment.center,
            child: Text(
              "$co",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              // border: Border(
              //   bottom: BorderSide(
              //     color: Colors.white,
              //     width: 4,
              //   ),
              // ),
            ),
          );
  }

  Widget ll(Icon i, String hint, TextInputType ty, String? cd) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 7,
              child: i,
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 45,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Expanded(
            child: Container(
              child: Form(
                child: TextFormField(
                  keyboardType: ty,
                  autofocus: true,
                  // mouseCursor: MouseCursor.uncontrolled,

                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      cd = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Resume Workspace"),
        elevation: 0,
      ),
      // backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      n = true;
                    });
                  },
                  child: (n) ? lol("Contact", true) : lol("Contact", false),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      n = false;
                    });
                  },
                  child: (n) ? lol("Photo", false) : lol("Photo", true),
                ),
              ],
            ),
            (n)
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 7,
                                    child: Icon(
                                      Icons.person,
                                      size: 40,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Expanded(
                                  child: Container(
                                    child: TextFormField(
                                      initialValue: Golbal.name,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.name,
                                      // autofocus: true,
                                      // mouseCursor: MouseCursor.uncontrolled,

                                      decoration: InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        Golbal.name = value;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 7,
                                    child: Icon(
                                      Icons.email,
                                      size: 40,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Expanded(
                                  child: Container(
                                    child: TextFormField(
                                      initialValue: Golbal.emali,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      // autofocus: true,
                                      // mouseCursor: MouseCursor.uncontrolled,

                                      decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        Golbal.emali = value;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 7,
                                    child: Icon(
                                      Icons.phone_android,
                                      size: 40,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Expanded(
                                  child: Container(
                                    child: TextFormField(
                                      initialValue: (Golbal.number!=null)?Golbal.number.toString():null,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.phone,
                                      // autofocus: true,
                                      // mouseCursor: MouseCursor.uncontrolled,

                                      decoration: InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        Golbal.number = int.parse(value);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 40,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 7,
                                    child: Icon(
                                      Icons.location_pin,
                                      size: 40,
                                      color: Colors.black45,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Expanded(
                                  child: Container(
                                    child: TextFormField(
                                      initialValue: Golbal.add1,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.streetAddress,
                                      // autofocus: true,
                                      // mouseCursor: MouseCursor.uncontrolled,

                                      decoration: InputDecoration(
                                        hintText: "Address(Street,Building No)",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        Golbal.add1 = value;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 7,
                                    child: Icon(
                                      Icons.abc,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Expanded(
                                  child: Container(
                                    child: TextFormField(
                                      initialValue: Golbal.add2,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.streetAddress,
                                      // autofocus: true,
                                      // mouseCursor: MouseCursor.uncontrolled,

                                      decoration: InputDecoration(
                                        hintText: "Address Line 2",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        Golbal.add2 = value;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        100,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 7,
                                    child: Icon(
                                      Icons.abc,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Expanded(
                                  child: Container(
                                    child: TextFormField(
                                      initialValue: Golbal.add3,
                                      keyboardType: TextInputType.streetAddress,
                                      // autofocus: true,
                                      // mouseCursor: MouseCursor.uncontrolled,
                                      textInputAction: TextInputAction.next,

                                      decoration: InputDecoration(
                                        hintText: "Address Line 3",
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          Golbal.add3 = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              alignment: Alignment(0, -0.5),
                              children: [
                                CircleAvatar(
                                  maxRadius: 55,
                                  backgroundColor: Colors.black26,
                                  backgroundImage: (Golbal.image2 != null)
                                      ? FileImage(Golbal.image2!)
                                      : null,
                                ),
                                Align(
                                  alignment: Alignment(0.27, 0),
                                  child: Container(
                                    height: 20,
                                    // alignment: Alignment(0,1),
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          imageformcomer();
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 15,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
