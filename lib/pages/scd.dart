import 'package:flutter/material.dart';

List<Map<String, dynamic>> k = [
  {
    "icons": "assets/images/contact-books.png",
    "name": "Contact info",
    "na": "co",
  },
  {
    "icons": "assets/images/briefcase.png",
    "name": "Carrier Objective",
    "na": "co1",
  },
  {
    "icons": "assets/images/user.png",
    "name": "Personal Details",
    "na":"co2",
  },
  {
    "icons": "assets/images/mortarboard.png",
    "name": "Eduction",
    "na":"co3",
  },
  {
    "icons": "assets/images/thinking.png",
    "name": "Experiences",
    "na":"co4",
  },
  {
    "icons": "assets/images/achievement.png",
    "name": "Techaical Skills",
    "na":"co5",
  },
  {
    "icons": "assets/images/open-book.png",
    "name": "Interst/Hobbies",
  },
  {
    "icons": "assets/images/project.png",
    "name": "Projects",
    "na":"co6",
  },
  {
    "icons": "assets/images/experience.png",
    "name": "Achievements",
    "na":"co7",
  },
  {
    "icons": "assets/images/handshake.png",
    "name": "References",
    "na":"co8",
  },
  {
    "icons": "assets/images/declaration.png",
    "name": "Declaration",
    "na":"co9",
  },
];

class option extends StatefulWidget {
  const option({Key? key}) : super(key: key);

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leading: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop("/");
                });
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ],
        ),
        title: Column(
          children: [
            Text("Resume Workspace"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 13,
            ),
            Text("Build Options"),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        // backgroundColor: Colors.blue.shade700,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: k
                .map(
                  (e) => Container(
                    height: MediaQuery.of(context).size.height / 13,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          height: MediaQuery.of(context).size.height / 20,
                          child: Image.asset(
                            "${e['icons']}",
                            // height: 50,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 15,
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            // padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            // width: 40,
                            // color: Colors.amber,
                            // alignment: Alignment(-0.7,0),
                            child: Text(
                              "${e['name']}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.pushNamed(context, e['na']);
                                });
                              },
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
