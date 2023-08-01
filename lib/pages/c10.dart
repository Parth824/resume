import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class Declaratio extends StatefulWidget {
  const Declaratio({super.key});

  @override
  State<Declaratio> createState() => _DeclaratioState();
}

class _DeclaratioState extends State<Declaratio> {
  bool v = Golbal.vv;
  bool m = false;
  double oo = 9;

  String? d = Golbal.descri1;
  String? de = Golbal.date1;
  String? c =Golbal.city;

  TextEditingController d1 = TextEditingController(text: Golbal.descri1);
  TextEditingController de1 = TextEditingController(text: Golbal.date1);
  TextEditingController c1 = TextEditingController(text: Golbal.city);
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
        title: Text("Declaration"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Container(
            height: (v)?MediaQuery.of(context).size.height / 1.7:MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Declaration",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Switch(
                        value: v,
                        onChanged: (value) {
                          setState(() {
                            v = value;
                            if (v == false) {
                              // m = false;
                              oo = 9;
                            } else {
                              // m = true;
                              oo = 1.7;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  (v)
                      ? Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 11,
                                width: MediaQuery.of(context).size.width / 7,
                                // color: Colors.amber,
                                child: Image.asset("assets/images/target.png"),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 35,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 14,
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: d1,
                                  decoration: InputDecoration(
                                    hintText: "Descripation",
                                    hintStyle: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (value) {
                                    d = value;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 35,
                              ),
                              Divider(
                                color: Colors.black,
                                thickness: 0.5,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 45,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    // color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              25,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              21,
                                          child: TextFormField(
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                            textInputAction:
                                                TextInputAction.next,
                                            keyboardType:
                                                TextInputType.datetime,
                                            controller: de1,
                                            decoration: InputDecoration(
                                              hintText: "DD/MM/YYYY",
                                              hintStyle: TextStyle(
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w500,
                                                height: 3,
                                                fontSize: 10,
                                              ),
                                              border: OutlineInputBorder(),
                                            ),
                                            onChanged: (value) {
                                              de = value;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width: MediaQuery.of(context).size.width /
                                        2.91,
                                    // color: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Place(Interviewvenue/city)",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              50,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              21,
                                          child: TextFormField(
                                            style: TextStyle(
                                              fontSize: 10,
                                            ),
                                            textInputAction:
                                                TextInputAction.next,
                                            controller: c1,
                                            decoration: InputDecoration(
                                              hintText: "Eg. Surat",
                                              hintStyle: TextStyle(
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w500,
                                                height: 3,
                                                fontSize: 10,
                                              ),
                                              border: OutlineInputBorder(),
                                            ),
                                            onChanged: (value) {
                                              c = value;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    Golbal.descri1 = d;
                                    Golbal.date1 = de;
                                    Golbal.city = c;
                                    Golbal.vv = v;
                                    d1.clear();
                                    de1.clear();
                                    c1.clear();
                                  },
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text(
                                        "SAVE",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
