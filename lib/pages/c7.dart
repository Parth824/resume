import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class proje extends StatefulWidget {
  const proje({super.key});

  @override
  State<proje> createState() => _projeState();
}

class _projeState extends State<proje> {
  bool x = Golbal.xx;
  bool y = Golbal.yy;
  bool z = Golbal.zz;
  Color a = Golbal.aa;
  Color b = Golbal.bb;
  Color c = Golbal.cc;

  String? pt = Golbal.protital;
  String? ro = Golbal.role1;
  String? tec = Golbal.technolog;
  String? pro = Golbal.projectdesc;

  TextEditingController pto = TextEditingController(text: Golbal.protital);
  TextEditingController roo = TextEditingController(text: Golbal.role1);
  TextEditingController teco = TextEditingController(text: Golbal.technolog);
  TextEditingController proo = TextEditingController(text: Golbal.projectdesc);

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
        title: Text("Projects"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.22,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Title",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 14,
                    child: TextFormField(
                      controller: pto,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Resume Bulider App",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        pt = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Text(
                    "Technologies",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 1.9,
                    // color: Colors.amber,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      title: Text(
                        "C Programming",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: a,
                        ),
                      ),
                      value: x,
                      onChanged: (val) {
                        setState(() {
                          x = val!;
                          if (a == Colors.grey.shade400) {
                            a = Colors.blue;
                          } else {
                            a = Colors.grey.shade400;
                          }
                        });
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 3,
                    // color: Colors.amber,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      title: Text(
                        "C++",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: b,
                        ),
                      ),
                      value: y,
                      onChanged: (val) {
                        setState(() {
                          y = val!;
                          if (b == Colors.grey.shade400) {
                            b = Colors.blue;
                          } else {
                            b = Colors.grey.shade400;
                          }
                        });
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 3,
                    // color: Colors.amber,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      title: Text(
                        "Flutter",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: c,
                        ),
                      ),
                      value: z,
                      onChanged: (val) {
                        setState(() {
                          z = val!;
                          if (c == Colors.grey.shade400) {
                            c = Colors.blue;
                          } else {
                            c = Colors.grey.shade400;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Roles",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      maxLines: 2,
                      controller: roo,
                      decoration: InputDecoration(
                        hintText: "Organize team members, Code analysis",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          height: 1,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        ro = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Technologies",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 16,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: teco,
                      decoration: InputDecoration(
                        hintText: "5 - programmers",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        tec = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Text(
                    "Project Descripation",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: proo,
                      decoration: InputDecoration(
                        hintText: "Enter your Project Descripation",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        pro = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Golbal.protital = pt;
                          Golbal.role1 = ro;
                          Golbal.technolog = tec;
                          Golbal.projectdesc = pro;
                          Golbal.xx = x;
                          Golbal.yy = y;
                          Golbal.zz = z;
                          Golbal.aa = a;
                          Golbal.bb = b;
                          Golbal.cc = c;
                          x = false;
                          y = false;
                          z = false;
                          a = Colors.grey.shade400;
                          b = Colors.grey.shade400;
                          c = Colors.grey.shade400;
                          pto.clear();
                          roo.clear();
                          teco.clear();
                          proo.clear();
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width / 3,
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
    );
  }
}
