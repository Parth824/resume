import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class Refere extends StatefulWidget {
  const Refere({super.key});

  @override
  State<Refere> createState() => _RefereState();
}

class _RefereState extends State<Refere> {
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
        title: Text("References"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
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
                    "Reference Name",
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
                      initialValue: Golbal.refername,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Enter Reference Name",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        Golbal.refername = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Text(
                    "Designation",
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
                      initialValue: Golbal.desing,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Marketing Manager,ID -342332",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 0,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        Golbal.desing = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Text(
                    "Organization/Institute",
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
                      initialValue: Golbal.institute,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Green Energy Pvt.Ltd",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 0,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        Golbal.institute = value;
                      },
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
