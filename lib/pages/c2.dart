import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class carrierr extends StatefulWidget {
  const carrierr({super.key});

  @override
  State<carrierr> createState() => _carrierrState();
}

class _carrierrState extends State<carrierr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Carrier Objective"),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      // color: Colors.black,
                      child: Text(
                        "Career Objective",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4.5,
                        // color: Colors.amber,
                        child: TextFormField(
                          initialValue: Golbal.objective,
                          textInputAction: TextInputAction.next,
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Descripation",
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (val) {
                            Golbal.objective = val;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
                        child: Text(
                          "Current Designation (Experienced Candidate)",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        height: MediaQuery.of(context).size.height / 15,
                        // color: Colors.amber,
                        child: TextFormField(
                          initialValue: Golbal.designation,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Software Engineer",
                            hintStyle: TextStyle(
                              height: 1,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (val) {
                            Golbal.designation = val;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
