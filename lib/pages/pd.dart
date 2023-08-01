import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
import 'package:pdf/pdf.dart';
import 'package:resume_app/obj.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';


// ignore: camel_case_types
class pfdmy extends StatefulWidget {
  const pfdmy({super.key});

  @override
  State<pfdmy> createState() => _pfdmyState();
}

class _pfdmyState extends State<pfdmy> {
  final pd = pw.Document();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pd.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Container(
          child: pw.Column(
            children: [
              pw.Container(
                height: 90,
                // width: MediaQuery.of(context).size.width,
                color: PdfColors.white,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width/10,
                    // ),
                    pw.SizedBox(
                      width: 10,
                    ),
                    (Golbal.image2 != null)
                        ? pw.Container(
                          height: 75,
                            decoration: pw.BoxDecoration(
                                // borderRadius:pw.BorderRadius.circular(75),
                                shape: pw.BoxShape.circle,
                                ),
                            child:pw.ClipRRect(
                              // horizontalRadius: 50,
                              // verticalRadius: 0,
                              child: pw.Image(
                               pw.MemoryImage(
                                Golbal.image2!.readAsBytesSync(),
                              ),
                            ),
                            )
                          )
                        : pw.Container(),
                    pw.SizedBox(
                      width: 10,
                    ),
                    pw.Container(
                      // height: MediaQuery.of(context).size.height,
                      width: 120,
                      // color: Colors.amber,
                      alignment: pw.Alignment.center,
                      child: (Golbal.name == null)
                          ? null
                          : pw.Text(
                              "${Golbal.name}",
                              style: pw.TextStyle(
                                color: PdfColors.red,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                    ),
                    pw.SizedBox(
                      width: 10,
                    ),
                    pw.Container(
                      // height: MediaQuery.of(context).size.height,
                      width: 150,
                      // color: Colors.black,
                      alignment: pw.Alignment.center,
                      child: (Golbal.objective == null)
                          ? null
                          : pw.Text(
                              "${Golbal.objective}",
                              style: pw.TextStyle(
                                // color: Colors.red,
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 8,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              pw.Container(
                // height: 662,
                color: PdfColors.grey100,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                    pw.Container(
                      child: pw.Column(
                        children: [
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(8.0),
                            child: pw.Container(
                              // height: MediaQuery.of(context).size.height / 4.5,
                              width: 180,
                              decoration: pw.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: pw.BorderRadius.circular(5),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Contact",
                                      style: pw.TextStyle(
                                        color: PdfColors.red,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 15,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Icon(
                                          pw.IconData(0xe3c3),
                                          size: 15,
                                        ),
                                        pw.SizedBox(
                                          width: 4.5,
                                        ),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 150,
                                          // color: Colors.amber,
                                          child: (Golbal.emali == null)
                                              ? null
                                              : pw.Text(
                                                  "${Golbal.emali}",
                                                  style: pw.TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 7,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Icon(
                                          pw.IconData(0xe126),
                                          size: 15,
                                        ),
                                        pw.SizedBox(
                                          width: 4.5,
                                        ),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 150,
                                          // color: Colors.amber,
                                          child: (Golbal.number == null)
                                              ? null
                                              : pw.Text(
                                                  "${Golbal.number}",
                                                  style: pw.TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 7,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Icon(
                                          pw.IconData(0xe3ac),
                                          size: 15,
                                        ),
                                        pw.SizedBox(
                                          width: 4.5,
                                        ),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 150,
                                          // color: Colors.amber,
                                          child: pw.Text(
                                            "${(Golbal.add1 == null) ? "" : Golbal.add1},${(Golbal.add2 == null) ? "" : Golbal.add2},${(Golbal.add3 == null) ? "" : Golbal.add3}.",
                                            style: pw.TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(8.0),
                            child: pw.Container(
                              // height: MediaQuery.of(context).size.height / 5.5,
                              width: 180,
                              decoration: pw.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: pw.BorderRadius.circular(5),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Personal Details",
                                      style: pw.TextStyle(
                                        color: PdfColors.red,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 15,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Text(
                                          "DOB :",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(
                                          width: 4.5,
                                        ),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 140,
                                          // color: Colors.black,
                                          child: (Golbal.date == null)
                                              ? null
                                              : pw.Text(
                                                  "${Golbal.date}",
                                                  style: pw.TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 7.5,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Text(
                                          "Marital status :",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(width: 4.5),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 90,
                                          // color: Colors.amber,
                                          child: (Golbal.marital == null)
                                              ? null
                                              : pw.Text(
                                                  "${Golbal.marital}",
                                                  style: pw.TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 7,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Text(
                                          "Languages :",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(
                                          width: 4.5,
                                        ),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 105,
                                          // color: Colors.amber,
                                          child: pw.Text(
                                            "${(Golbal.e == false) ? "" : "Engilsh,"}${(Golbal.g == false) ? "" : "Gujarti,"}${(Golbal.h == false) ? "" : "Hindi"}",
                                            style: pw.TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 7,
                                    ),
                                    pw.Row(
                                      children: [
                                        pw.Text(
                                          "Nationality :",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                        pw.SizedBox(
                                          width: 4.5,
                                        ),
                                        pw.Container(
                                          // height: MediaQuery.of(context).size.height / 6,
                                          width: 105,
                                          // color: Colors.amber,
                                          child: (Golbal.intl == null)
                                              ? null
                                              : pw.Text(
                                                  "${Golbal.intl}",
                                                  style: pw.TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                    pw.SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(8.0),
                            child: pw.Container(
                              // height: MediaQuery.of(context).size.height / 5.8,
                              width: 180,
                              decoration: pw.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: pw.BorderRadius.circular(5),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Eduction",
                                      style: pw.TextStyle(
                                        color: PdfColors.red,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 15,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 155,
                                      // color: Colors.amber,
                                      child: (Golbal.coure == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.coure}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 155,
                                      // color: Colors.amber,
                                      child: (Golbal.year == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.year}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 155,
                                      // color: Colors.amber,
                                      child: (Golbal.school == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.school}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 155,
                                      // color: Colors.amber,
                                      child: (Golbal.per == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.per}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.all(8.0),
                            child: pw.Container(
                              // height: MediaQuery.of(context).size.height / 4.5,
                              width: 180,
                              decoration: pw.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: pw.BorderRadius.circular(5),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text(
                                      "Experience",
                                      style: pw.TextStyle(
                                        color: PdfColors.red,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      height: 15,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 170,
                                      // color: Colors.amber,
                                      child: (Golbal.compan == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.compan}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 170,
                                      // color: Colors.amber,
                                      child: (Golbal.quatlity == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.quatlity}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 170,
                                      // color: Colors.amber,
                                      child: (Golbal.role == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.role}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                    pw.SizedBox(
                                      height: 10,
                                    ),
                                    (Golbal.emp == "Previously Emaployed")
                                        ? pw.Column(
                                            children: [
                                              pw.Text(
                                                "Previously Emaploye",
                                                style: pw.TextStyle(
                                                  fontSize: 9,
                                                  fontWeight:
                                                      pw.FontWeight.bold,
                                                ),
                                              ),
                                              pw.SizedBox(
                                                height: 10,
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Text(
                                                    "Date Joined :",
                                                    style: pw.TextStyle(
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                  pw.SizedBox(
                                                    width: 4.5,
                                                  ),
                                                  pw.Container(
                                                    // height: MediaQuery.of(context).size.height / 6,
                                                    width: 100,
                                                    // color: Colors.amber,
                                                    child: (Golbal.jon1 == null)
                                                        ? null
                                                        : pw.Text(
                                                            "${Golbal.jon1}",
                                                            style: pw.TextStyle(
                                                              fontSize: 9,
                                                            ),
                                                          ),
                                                  ),
                                                ],
                                              ),
                                              pw.SizedBox(
                                                height: 10,
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Text(
                                                    "Date Exit :",
                                                    style: pw.TextStyle(
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                  pw.SizedBox(
                                                    width: 4.5,
                                                  ),
                                                  pw.Container(
                                                    // height: MediaQuery.of(context).size.height / 6,
                                                    width: 110,
                                                    // color: Colors.amber,
                                                    child: (Golbal.exit == null)
                                                        ? null
                                                        : pw.Text(
                                                            "${Golbal.exit}",
                                                            style: pw.TextStyle(
                                                              fontSize: 9,
                                                            ),
                                                          ),
                                                  ),
                                                ],
                                              ),
                                              pw.SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          )
                                        : pw.Column(
                                            children: [
                                              pw.Text(
                                                "Currently Emaploye ",
                                                style: pw.TextStyle(
                                                  fontSize: 9,
                                                  fontWeight:
                                                      pw.FontWeight.bold,
                                                ),
                                              ),
                                              pw.SizedBox(
                                                height: 10,
                                              ),
                                              pw.Row(
                                                children: [
                                                  pw.Text(
                                                    "Date Joined :",
                                                    style: pw.TextStyle(
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                  pw.SizedBox(
                                                    width: 4.5,
                                                  ),
                                                  pw.Container(
                                                    // height: MediaQuery.of(context).size.height / 6,
                                                    width: 100,
                                                    // color: Colors.amber,
                                                    child: (Golbal.join2 ==
                                                            null)
                                                        ? null
                                                        : pw.Text(
                                                            "${Golbal.join2}",
                                                            style: pw.TextStyle(
                                                              fontSize: 9,
                                                            ),
                                                          ),
                                                  ),
                                                ],
                                              ),
                                              pw.SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.Column(
                      children: [
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.fromLTRB(0, 0, 8, 0),
                          child: pw.Container(
                            // height: MediaQuery.of(context).size.height / 9,
                            width: 155,
                            decoration: pw.BoxDecoration(
                              color: PdfColors.white,
                              borderRadius: pw.BorderRadius.circular(5),
                            ),
                            child: pw.Container(
                              margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "Technical Skills",
                                    style: pw.TextStyle(
                                      color: PdfColors.red,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 7.5,
                                  ),
                                  pw.Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 160,
                                    // color: Colors.amber,
                                    child: (Golbal.Skill.isEmpty)
                                        ? pw.Text(
                                            "parthabbkjah\njadsghhjgsahg\nshgdahdagjf\ngshfhjgfjhgfah",
                                            style: pw.TextStyle(
                                              fontSize: 9,
                                            ),
                                          )
                                        : pw.Text(
                                            "${Golbal.Skill[0]}\n${Golbal.Skill[1]}\n${Golbal.Skill[2]}\n${Golbal.Skill[3]}",
                                            style: pw.TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.fromLTRB(0, 0, 8, 0),
                          child: pw.Container(
                            // height: MediaQuery.of(context).size.height / 8,
                            width: 155,
                            decoration: pw.BoxDecoration(
                              color: PdfColors.white,
                              borderRadius: pw.BorderRadius.circular(5),
                            ),
                            child: pw.Container(
                              margin: pw.EdgeInsets.fromLTRB(5, 10, 0, 0),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Text(
                                    "Achievements",
                                    style: pw.TextStyle(
                                      color: PdfColors.red,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                  pw.SizedBox(
                                    width: 7.5,
                                  ),
                                  pw.Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 155,
                                    // color: Colors.amber,
                                    child: (Golbal.Skill.isEmpty)
                                        ? pw.Text(
                                            "parthabbkjah\njadsghhjgsahg\nshgdahdagjf\ngshfhjgfjhgfah",
                                            style: pw.TextStyle(
                                              fontSize: 9,
                                            ),
                                          )
                                        : pw.Text(
                                            "${Golbal.Skill[0]}\n${Golbal.Skill[1]}\n${Golbal.Skill[2]}\n${Golbal.Skill[3]}",
                                            style: pw.TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  pw.SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Container(
                          // height: MediaQuery.of(context).size.height / 3,
                          width: 155,
                          decoration: pw.BoxDecoration(
                            color: PdfColors.white,
                            borderRadius: pw.BorderRadius.circular(5),
                          ),
                          child: pw.Container(
                            margin: pw.EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  "Projects",
                                  style: pw.TextStyle(
                                    color: PdfColors.red,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Project Title:",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 73,
                                      // color: Colors.amber,
                                      child: (Golbal.protital == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.protital}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Technologies :",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 50,
                                      // color: Colors.amber,
                                      child: pw.Text(
                                        "${(Golbal.xx == false) ? "" : "C Programming,"}${(Golbal.yy == false) ? "" : "C++,"}${(Golbal.zz == false) ? "" : ""}",
                                        style: pw.TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Roles:",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 105,
                                      // color: Colors.amber,
                                      child: (Golbal.role1 == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.role1}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Technologies:",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 50,
                                      // color: Colors.amber,
                                      child: (Golbal.technolog == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.technolog}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Project Descripation :",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 26,
                                      // color: Colors.amber,
                                      child: (Golbal.projectdesc == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.projectdesc}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Container(
                          // height: MediaQuery.of(context).size.height / 5.8,
                          width: 155,
                          decoration: pw.BoxDecoration(
                            color: PdfColors.white,
                            borderRadius: pw.BorderRadius.circular(5),
                          ),
                          child: pw.Container(
                            margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  "References",
                                  style: pw.TextStyle(
                                    color: PdfColors.red,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                                pw.SizedBox(
                                  height: 15,
                                ),
                                pw.Container(
                                  // height: MediaQuery.of(context).size.height / 6,
                                  width: 150,
                                  // color: Colors.amber,
                                  child: (Golbal.refername == null)
                                      ? null
                                      : pw.Text(
                                          "${Golbal.refername}",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Container(
                                  // height: MediaQuery.of(context).size.height / 6,
                                  width: 150,
                                  // color: Colors.amber,
                                  child: (Golbal.desing == null)
                                      ? null
                                      : pw.Text(
                                          "${Golbal.desing}",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Container(
                                  // height: MediaQuery.of(context).size.height / 6,
                                  width: 150,
                                  // color: Colors.amber,
                                  child: (Golbal.institute == null)
                                      ? null
                                      : pw.Text(
                                          "${Golbal.institute}",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: 10,
                        ),
                        pw.Container(
                          // height: MediaQuery.of(context).size.height / 5.8,
                          width: 155,
                          decoration: pw.BoxDecoration(
                            color: PdfColors.white,
                            borderRadius: pw.BorderRadius.circular(5),
                          ),
                          child: pw.Container(
                            margin: pw.EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  "declaration",
                                  style: pw.TextStyle(
                                    color: PdfColors.red,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                                pw.Container(
                                  // height: MediaQuery.of(context).size.height / 6,
                                  width: 150,
                                  // color: Colors.amber,
                                  child: (Golbal.descri1 == null)
                                      ? null
                                      : pw.Text(
                                          "${Golbal.descri1}",
                                          style: pw.TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                ),
                                pw.SizedBox(
                                  height: 7,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Date:",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 110,
                                      // color: Colors.amber,
                                      child: (Golbal.date1 == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.date1}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 5,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Citiy:",
                                      style: pw.TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                    pw.SizedBox(
                                      width: 4.5,
                                    ),
                                    pw.Container(
                                      // height: MediaQuery.of(context).size.height / 6,
                                      width: 110,
                                      // color: Colors.amber,
                                      child: (Golbal.city == null)
                                          ? null
                                          : pw.Text(
                                              "${Golbal.city}",
                                              style: pw.TextStyle(
                                                fontSize: 9,
                                              ),
                                            ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: Column(
          children: [
            Container(
              height: 90,
              // width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width/10,
                  // ),
                  SizedBox(
                    width: 10,
                  ),
                  (Golbal.image2 != null)
                      ? Container(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            maxRadius: 50,
                            backgroundImage: MemoryImage(
                              Golbal.image2!.readAsBytesSync(),
                            ),
                          ),
                        )
                      // ? CircleAvatar(
                      //     maxRadius: 25,
                      //     backgroundImage: MemoryImage(
                      //       Golbal.image2!.readAsBytesSync(),
                      //     ),
                      //   )
                      : Container(),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height,
                    width: 120,
                    // color: Colors.amber,
                    alignment: Alignment.center,
                    child: (Golbal.name == null)
                        ? null
                        : Text(
                            "${Golbal.name}",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height,
                    width: 150,
                    // color: Colors.black,
                    alignment: Alignment.center,
                    child: (Golbal.objective == null)
                        ? null
                        : Text(
                            "${Golbal.objective}",
                            style: TextStyle(
                              // color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                  ),
                ],
              ),
            ),
            Container(
              height: 662,
              // color: Colors.amber,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: MediaQuery.of(context).size.height / 4.5,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 4.5,
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 150,
                                        // color: Colors.amber,
                                        child: (Golbal.emali == null)
                                            ? null
                                            : Text(
                                                "${Golbal.emali}",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 4.5,
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 150,
                                        // color: Colors.amber,
                                        child: (Golbal.number == null)
                                            ? null
                                            : Text(
                                                "${Golbal.number}",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 4.5,
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 150,
                                        // color: Colors.amber,
                                        child: Text(
                                          "${(Golbal.add1 == null) ? "" : Golbal.add1},${(Golbal.add2 == null) ? "" : Golbal.add2},${(Golbal.add3 == null) ? "" : Golbal.add3}.",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: MediaQuery.of(context).size.height / 5.5,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Personal Details",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "DOB :",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.5,
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 140,
                                        // color: Colors.black,
                                        child: (Golbal.date == null)
                                            ? null
                                            : Text(
                                                "${Golbal.date}",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7.5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Marital status :",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                      SizedBox(width: 4.5),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 90,
                                        // color: Colors.amber,
                                        child: (Golbal.marital == null)
                                            ? null
                                            : Text(
                                                "${Golbal.marital}",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Languages :",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.5,
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 105,
                                        // color: Colors.amber,
                                        child: Text(
                                          "${(Golbal.e == false) ? "" : "Engilsh,"}${(Golbal.g == false) ? "" : "Gujarti,"}${(Golbal.h == false) ? "" : "Hindi"}",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Nationality :",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.5,
                                      ),
                                      Container(
                                        // height: MediaQuery.of(context).size.height / 6,
                                        width: 105,
                                        // color: Colors.amber,
                                        child: (Golbal.intl == null)
                                            ? null
                                            : Text(
                                                "${Golbal.intl}",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: MediaQuery.of(context).size.height / 5.8,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Eduction",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 155,
                                    // color: Colors.amber,
                                    child: (Golbal.coure == null)
                                        ? null
                                        : Text(
                                            "${Golbal.coure}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 155,
                                    // color: Colors.amber,
                                    child: (Golbal.year == null)
                                        ? null
                                        : Text(
                                            "${Golbal.year}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 155,
                                    // color: Colors.amber,
                                    child: (Golbal.school == null)
                                        ? null
                                        : Text(
                                            "${Golbal.school}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 155,
                                    // color: Colors.amber,
                                    child: (Golbal.per == null)
                                        ? null
                                        : Text(
                                            "${Golbal.per}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: MediaQuery.of(context).size.height / 4.5,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Experience",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 170,
                                    // color: Colors.amber,
                                    child: (Golbal.compan == null)
                                        ? null
                                        : Text(
                                            "${Golbal.compan}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 170,
                                    // color: Colors.amber,
                                    child: (Golbal.quatlity == null)
                                        ? null
                                        : Text(
                                            "${Golbal.quatlity}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 170,
                                    // color: Colors.amber,
                                    child: (Golbal.role == null)
                                        ? null
                                        : Text(
                                            "${Golbal.role}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  (Golbal.emp == "Previously Emaployed")
                                      ? Column(
                                          children: [
                                            Text(
                                              "Previously Emaploye",
                                              style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Date Joined :",
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 4.5,
                                                ),
                                                Container(
                                                  // height: MediaQuery.of(context).size.height / 6,
                                                  width: 100,
                                                  // color: Colors.amber,
                                                  child: (Golbal.jon1 == null)
                                                      ? null
                                                      : Text(
                                                          "${Golbal.jon1}",
                                                          style: TextStyle(
                                                            fontSize: 9,
                                                          ),
                                                        ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Date Exit :",
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 4.5,
                                                ),
                                                Container(
                                                  // height: MediaQuery.of(context).size.height / 6,
                                                  width: 110,
                                                  // color: Colors.amber,
                                                  child: (Golbal.exit == null)
                                                      ? null
                                                      : Text(
                                                          "${Golbal.exit}",
                                                          style: TextStyle(
                                                            fontSize: 9,
                                                          ),
                                                        ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Text(
                                              "Currently Emaploye ",
                                              style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Date Joined :",
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 4.5,
                                                ),
                                                Container(
                                                  // height: MediaQuery.of(context).size.height / 6,
                                                  width: 100,
                                                  // color: Colors.amber,
                                                  child: (Golbal.join2 == null)
                                                      ? null
                                                      : Text(
                                                          "${Golbal.join2}",
                                                          style: TextStyle(
                                                            fontSize: 9,
                                                          ),
                                                        ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: Container(
                          // height: MediaQuery.of(context).size.height / 9,
                          width: 155,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Technical Skills",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 7.5,
                                ),
                                Container(
                                  // height: MediaQuery.of(context).size.height / 6,
                                  width: 160,
                                  // color: Colors.amber,
                                  child: (Golbal.Skill.isEmpty)
                                      ? Text(
                                          "parthabbkjah\njadsghhjgsahg\nshgdahdagjf\ngshfhjgfjhgfah",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        )
                                      : Text(
                                          "${Golbal.Skill[0]}\n${Golbal.Skill[1]}\n${Golbal.Skill[2]}\n${Golbal.Skill[3]}",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: Container(
                          // height: MediaQuery.of(context).size.height / 8,
                          width: 155,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Achievements",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 7.5,
                                ),
                                Container(
                                  // height: MediaQuery.of(context).size.height / 6,
                                  width: 155,
                                  // color: Colors.amber,
                                  child: (Golbal.Skill.isEmpty)
                                      ? Text(
                                          "parthabbkjah\njadsghhjgsahg\nshgdahdagjf\ngshfhjgfjhgfah",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        )
                                      : Text(
                                          "${Golbal.Skill[0]}\n${Golbal.Skill[1]}\n${Golbal.Skill[2]}\n${Golbal.Skill[3]}",
                                          style: TextStyle(
                                            fontSize: 9,
                                          ),
                                        ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height / 3,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Projects",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Project Title:",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 73,
                                    // color: Colors.amber,
                                    child: (Golbal.protital == null)
                                        ? null
                                        : Text(
                                            "${Golbal.protital}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Technologies :",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 50,
                                    // color: Colors.amber,
                                    child: Text(
                                      "${(Golbal.xx == false) ? "" : "C Programming,"}${(Golbal.yy == false) ? "" : "C++,"}${(Golbal.zz == false) ? "" : ""}",
                                      style: TextStyle(
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Roles:",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 105,
                                    // color: Colors.amber,
                                    child: (Golbal.role1 == null)
                                        ? null
                                        : Text(
                                            "${Golbal.role1}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Technologies:",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 50,
                                    // color: Colors.amber,
                                    child: (Golbal.technolog == null)
                                        ? null
                                        : Text(
                                            "${Golbal.technolog}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Project Descripation :",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 26,
                                    // color: Colors.amber,
                                    child: (Golbal.projectdesc == null)
                                        ? null
                                        : Text(
                                            "${Golbal.projectdesc}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height / 5.8,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "References",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                // height: MediaQuery.of(context).size.height / 6,
                                width: 150,
                                // color: Colors.amber,
                                child: (Golbal.refername == null)
                                    ? null
                                    : Text(
                                        "${Golbal.refername}",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                // height: MediaQuery.of(context).size.height / 6,
                                width: 150,
                                // color: Colors.amber,
                                child: (Golbal.desing == null)
                                    ? null
                                    : Text(
                                        "${Golbal.desing}",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                // height: MediaQuery.of(context).size.height / 6,
                                width: 150,
                                // color: Colors.amber,
                                child: (Golbal.institute == null)
                                    ? null
                                    : Text(
                                        "${Golbal.institute}",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height / 5.8,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "declaration",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                // height: MediaQuery.of(context).size.height / 6,
                                width: 150,
                                // color: Colors.amber,
                                child: (Golbal.descri1 == null)
                                    ? null
                                    : Text(
                                        "${Golbal.descri1}",
                                        style: TextStyle(
                                          fontSize: 9,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Date:",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 110,
                                    // color: Colors.amber,
                                    child: (Golbal.date1 == null)
                                        ? null
                                        : Text(
                                            "${Golbal.date1}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Citiy:",
                                    style: TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.5,
                                  ),
                                  Container(
                                    // height: MediaQuery.of(context).size.height / 6,
                                    width: 110,
                                    // color: Colors.amber,
                                    child: (Golbal.city == null)
                                        ? null
                                        : Text(
                                            "${Golbal.city}",
                                            style: TextStyle(
                                              fontSize: 9,
                                            ),
                                          ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() async {
            Uint8List data = await pd.save();
            await Printing.layoutPdf(
              onLayout: (format) => data,
            );
          });
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
