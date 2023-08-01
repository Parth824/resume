import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';
import 'package:resume_app/pages/c1.dart';
import 'package:resume_app/pages/c10.dart';
import 'package:resume_app/pages/c2.dart';
import 'package:resume_app/pages/c3.dart';
import 'package:resume_app/pages/c4.dart';
import 'package:resume_app/pages/c5.dart';
import 'package:resume_app/pages/c6.dart';
import 'package:resume_app/pages/c7.dart';
import 'package:resume_app/pages/c8.dart';
import 'package:resume_app/pages/c9.dart';
import 'package:resume_app/pages/pd.dart';
import 'package:resume_app/pages/scd.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/": (context) => const resum(),
        "op": (context) => const option(),
        "co": (context) => const contact(),
        "co1": (context) => const carrierr(),
        "co2": (context) => const person(),
        "co3": (context) => const Educt(),
        "co4": (context) => const Exper(),
        "co5": (context) => const Technic(),
        "co6": (context) => const proje(),
        "co7": (context) => const Achiev(),
        "co8": (context) => const Refere(),
        "co9": (context) => const Declaratio(),
      },
    ),
  );
}

class resum extends StatefulWidget {
  const resum({Key? key}) : super(key: key);

  @override
  State<resum> createState() => _resumState();
}

class _resumState extends State<resum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: Column(
          children: [
            Text("Resume Bulider"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            Text("RESUMES"),
          ],
        ),

        centerTitle: true,
        elevation: 0,
        // backgroundColor: Colors.blue.shade700,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/images/open-cardboard-box.png",
                height: 50,
              ),
            ),
          ),
          Text(
            "\nNo Resumes + Create new resume",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(158, 158, 158, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          // Text("name: ${Golbal.Skill}"),
          // Text("emali: ${Golbal.emali}"),
          // Text("Contec: ${Golbal.number}"),
          // Text("Addr: ${Golbal.add1}${Golbal.add2}${Golbal.add3}"),
          // Text("${Golbal.marital}"),
          // Text("${Golbal.date}"),
          // Text("${Golbal.intl}"),
          // (Golbal.e) ? Text("English") : Text(""),
          // (Golbal.g) ? Text("Gujarti") : Text(""),
          // (Golbal.h) ? Text("Hindi") : Text(""),
          // ElevatedButton(onPressed: () {}, child: Text("PDF"))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // SizedBox(
          //   width: MediaQuery.of(context).size.width / 15,
          // ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed("op");
              });
            },
            child: Icon(Icons.add),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width / 20,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => pfdmy()),
                );
              });
            },
            child: Icon(Icons.download),
          ),
        ],
      ),
    );
  }
}