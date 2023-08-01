import 'package:flutter/material.dart';
import 'package:resume_app/obj.dart';

class Technic extends StatefulWidget {
  const Technic({super.key});

  @override
  State<Technic> createState() => _TechnicState();
}

class _TechnicState extends State<Technic> {
  int i = 1;
  String? ll;
  double hom = 2.3;
  List<TextEditingController> m = <TextEditingController>[
    TextEditingController(),
    TextEditingController(),
  ];
  List<Map<String, dynamic>> k = [
    {
      "op": 0,
    },
    {
      "op": 1,
    }
  ];
  @override
  // void initState() {
  //   // TODO: implement initState
  //   Golbal.Skill.add(ll);
  //   super.initState();
  // }

  Widget lol(int kl) {
    return InkWell(
      onTap: () {
        setState(() {
          int kom;
          for (int j = 0; j < k.length; j++) {
            if (kl == k[j]['op']) {
              k.removeAt(j);
              m.removeAt(j);
              hom = hom + 0.3;
              i--;
            }
          }
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        alignment: Alignment.bottomCenter,
        // color: Colors.amber,
        child: Icon(Icons.delete, size: 33),
      ),
    );
  }

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
        title: Text("Tecnical Skills"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Container(
            height: MediaQuery.of(context).size.height / hom,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Column(
                  children: [
                    Text(
                      "Enter your skills",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black38,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 25,
                    ),
                    ...k
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: Form(
                                    child: TextFormField(
                                      controller: m[k.indexOf(e)],
                                      decoration: InputDecoration(
                                        hintText:
                                            "C Programming, Wed Technical",
                                        hintStyle: TextStyle(
                                            fontSize: 13, color: Colors.grey),
                                      ),
                                      onChanged: (value) {
                                      
                                      },
                                    ),
                                  ),
                                ),
                                lol(e['op']),
                                // Text("${}"),
                                // Text("${e['op']}"),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //     children: [
                    //       Container(
                    //         height: MediaQuery.of(context).size.height / 15,
                    //         width: MediaQuery.of(context).size.width / 1.5,
                    //         child: TextFormField(
                    //           decoration: InputDecoration(
                    //             hintText: "C Programming, Wed Technical",
                    //             hintStyle:
                    //                 TextStyle(fontSize: 13, color: Colors.grey),
                    //           ),
                    //         ),
                    //       ),
                    //       Container(
                    //         height: MediaQuery.of(context).size.height / 15,
                    //         alignment: Alignment.bottomCenter,
                    //         // color: Colors.amber,
                    //         child: Icon(Icons.delete, size: 33),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (i < 3) {
                              i++;
                              Map<String, dynamic> ki = {
                                "op": i,
                              };
                              hom = hom - 0.3;
                              k.addAll([ki]);
                              m.add(TextEditingController());
                            }
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
