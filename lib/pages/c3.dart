import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class person extends StatefulWidget {
  const person({super.key});

  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  String? marri = "single";
  Color b = Colors.blue;
  Color c = Colors.grey.shade400;
  bool? English = false;
  bool? Hindi = false;
  bool? Gujarati = false;
  bool? t = false;
  Color xx = Colors.grey.shade400;
  Color yy = Colors.grey.shade400;
  Color zz = Colors.grey.shade400;

  GlobalKey<FormState> k = GlobalKey<FormState>();
  GlobalKey<FormState> n = GlobalKey<FormState>();

  TextEditingController dob = TextEditingController(text: Golbal.date);
  TextEditingController nationality = TextEditingController(text: Golbal.intl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 125,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Personal Details"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.325,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              margin: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DOB",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    height: MediaQuery.of(context).size.height / 13.5,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Form(
                      key: k,
                      child: TextFormField(
                        controller: dob,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: "DD/MM/YYYY",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onSaved: (val) {
                          Golbal.date = val;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    "Marital Status",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    // color: Colors.amber,

                    child: RadioListTile(
                      // activeColor: Colors.amber,
                      title: Text(
                        "Single",
                        style: TextStyle(
                          fontSize: 15,
                          color: (t!) ? b : Golbal.co,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      value: "single",
                      groupValue: (t!) ? marri : Golbal.marital,
                      onChanged: (val) {
                        // t = false;
                        (t!)
                            ? setState(() {
                                marri = val.toString();
                                c = Colors.grey.shade400;
                                b = Colors.blue;
                              })
                            : setState(() {
                                Golbal.marital = val.toString();
                                Golbal.ho = Colors.grey.shade400;
                                Golbal.co = Colors.blue;
                              });
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    child: RadioListTile(
                      title: Text(
                        "Married",
                        style: TextStyle(
                          fontSize: 15,
                          color: (t!) ? c : Golbal.ho,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      value: "married",
                      groupValue: (t!) ? marri : Golbal.marital,
                      onChanged: (val) {
                        // t = false;
                        (t!)
                            ? setState(() {
                                marri = val.toString();
                                c = Colors.blue;
                                b = Colors.grey.shade400;
                              })
                            : setState(() {
                                Golbal.marital = val.toString();
                                Golbal.ho = Colors.blue;
                                Golbal.co = Colors.grey.shade400;
                              });
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    "Languages Known",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    // padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                    // color: Colors.amber,
                    child: CheckboxListTile(
                      value: (t!) ? English : Golbal.e,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "English",
                        style: TextStyle(
                          fontSize: 15,
                          color: (t!) ? xx : Golbal.x,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      side: BorderSide(color: (t!) ? xx : Golbal.x, width: 2),
                      onChanged: (val) {
                        // t = false;
                        (t!)
                            ? setState(() {
                                English = val!;
                                if (xx == Colors.grey.shade400) {
                                  xx = Colors.blue;
                                } else {
                                  xx = Colors.grey.shade400;
                                }
                              })
                            : setState(() {
                                Golbal.e = val!;
                                if (Golbal.x == Colors.grey.shade400) {
                                  Golbal.x = Colors.blue;
                                } else {
                                  Golbal.x = Colors.grey.shade400;
                                }
                              });
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    // padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                    // color: Colors.amber,
                    child: CheckboxListTile(
                      value: (t!) ? Hindi : Golbal.h,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      controlAffinity: ListTileControlAffinity.leading,
                      side: BorderSide(color: (t!) ? yy : Golbal.y, width: 2),
                      title: Text(
                        "Hindi",
                        style: TextStyle(
                          fontSize: 15,
                          color: (t!) ? yy : Golbal.y,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onChanged: (val) {
                        // t = false;
                        (t!)
                            ? setState(() {
                                Hindi = val!;
                                if (yy == Colors.grey.shade400) {
                                  yy = Colors.blue;
                                } else {
                                  yy = Colors.grey.shade400;
                                }
                              })
                            : setState(() {
                                Golbal.h = val!;
                                if (Golbal.y == Colors.grey.shade400) {
                                  Golbal.y = Colors.blue;
                                } else {
                                  Golbal.y = Colors.grey.shade400;
                                }
                              });
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2,
                    // padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                    // color: Colors.amber,
                    child: CheckboxListTile(
                      value: (t!) ? Gujarati : Golbal.g,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      controlAffinity: ListTileControlAffinity.leading,
                      autofocus: true,
                      side: BorderSide(color: (t!) ? zz : Golbal.z, width: 2),
                      title: Text(
                        "Gujarti",
                        style: TextStyle(
                          fontSize: 15,
                          color: (t!) ? zz : Golbal.z,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onChanged: (val) {
                        // t = false;
                        (t!)
                            ? setState(
                                () {
                                  Gujarati = val!;
                                  if (zz == Colors.grey.shade400) {
                                    zz = Colors.blue;
                                  } else {
                                    zz = Colors.grey.shade400;
                                  }
                                },
                              )
                            : setState(
                                () {
                                  Golbal.g = val!;
                                  if (Golbal.z == Colors.grey.shade400) {
                                    Golbal.z = Colors.blue;
                                  } else {
                                    Golbal.z = Colors.grey.shade400;
                                  }
                                },
                              );
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    "Nationality",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    height: MediaQuery.of(context).size.height / 13.5,
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Form(
                      key: n,
                      child: TextFormField(
                        controller: nationality,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Indian",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onSaved: (val) {
                          Golbal.intl = val;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          if (t == false) {
                            k.currentState!.save();
                            n.currentState!.save();
                            dob.clear();
                            nationality.clear();
                            t = true;
                          } else {
                            Golbal.e = English!;
                            Golbal.g = Gujarati!;
                            Golbal.h = Hindi!;
                            Golbal.marital = marri;
                            Golbal.x = xx;
                            Golbal.y = yy;
                            Golbal.z = zz;
                            Golbal.co = b;
                            Golbal.ho = c;
                            k.currentState!.save();
                            n.currentState!.save();
                          }
                        });
                      }),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 3.5,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
