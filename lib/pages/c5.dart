import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class Exper extends StatefulWidget {
  const Exper({super.key});

  @override
  State<Exper> createState() => _ExperState();
}

class _ExperState extends State<Exper> {
  String h = Golbal.emp;
  String? c =Golbal.compan;
  String? q = Golbal.quatlity;
  String? r = Golbal.role;
  String? d1 = Golbal.jon1;
  String? d2 = Golbal.join2;
  String? e = Golbal.exit;

  TextEditingController co = TextEditingController(text: Golbal.compan);
  TextEditingController qo = TextEditingController(text: Golbal.quatlity);
  TextEditingController ro = TextEditingController(text: Golbal.role);
  TextEditingController d1o =
      TextEditingController(text: (Golbal.jon1 != null) ? Golbal.jon1 : null);
  TextEditingController d2o =
      TextEditingController(text: (Golbal.join2 != null) ? Golbal.join2 : null);
  TextEditingController eo =
      TextEditingController(text: (Golbal.exit != null) ? Golbal.exit : null);
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
        title: Text("Experience"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.31,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 20, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company Name",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 13.5,
                    child: TextFormField(
                      controller: co,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "New Enterprise, San Francisco",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        c = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Text(
                    "School/Collage/Institute",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 13.5,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: qo,
                      decoration: InputDecoration(
                        hintText: "Quallity Test Engineer",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        q = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Text(
                    "Roles (optional)",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height/13.5,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      maxLines: 2,
                      controller: ro,
                      decoration: InputDecoration(
                        hintText:
                            "Working With Team members to come up with new concptes and peoduct analysis",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        r = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Text(
                    "Employed Status",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: "Previously Emaployed",
                          groupValue: h,
                          onChanged: (val) {
                            setState(() {
                              h = val.toString();
                            });
                          }),
                      Text(
                        "Previously Emaployed",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.blue,
                        ),
                      ),
                      Radio(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          value: "Currrently Employed",
                          groupValue: h,
                          onChanged: (val) {
                            setState(() {
                              h = val.toString();
                            });
                          }),
                      Text(
                        "Currrently Employed",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  (h == "Previously Emaployed")
                      ? Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date Joined",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        300,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    // color: Colors.amber,
                                    child: TextFormField(
                                      controller: d1o,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                        fontSize: 10,
                                        // height: 3.2,
                                      ),
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          fontSize: 10,
                                          height: 3.2,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade400,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (value) {
                                        d1 = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date Exit",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        300,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    // color: Colors.amber,
                                    child: TextFormField(
                                      // cursorHeight:10,
                                      controller: eo,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                        fontSize: 10,
                                        // height: 3.2,
                                      ),
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          fontSize: 10,
                                          height: 3.2,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade400,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (value) {
                                        e = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date Joined",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        300,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    // color: Colors.amber,
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                        fontSize: 10,
                                        // height: 3.2,
                                      ),
                                      controller: d2o,
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          fontSize: 10,
                                          height: 3.2,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade400,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                      onChanged: (value) {
                                        d2 = value;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Golbal.compan = c;
                          Golbal.quatlity = q;
                          Golbal.role = r;
                          Golbal.jon1 = d1;
                          Golbal.join2 = d2;
                          Golbal.emp = h;
                          h = "Previously Emaployed";
                          Golbal.exit = e;
                          co.clear();
                          qo.clear();
                          ro.clear();
                          d1o.clear();
                          d2o.clear();
                          eo.clear();
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 3.3,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
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
    );
  }
}
