// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:final_ubm/widget/icon_button.dart';
import 'package:final_ubm/widget/topbar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Votre progression"),
                              Spacer(),
                              Text("0%")
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          LinearProgressIndicator(
                            value: 5,
                            backgroundColor: Colors.pink,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.green),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CircleIconButton(Icons.waterfall_chart_outlined,
                          Colors.teal, 24, "Rang", 14),
                      CircleIconButton(Icons.task_alt_outlined, Colors.teal, 24,
                          "Taches", 14),
                      CircleIconButton(
                          Icons.person, Colors.teal, 24, "Client", 14),
                      CircleIconButton(
                          Icons.backpack, Colors.teal, 24, "Projet", 14),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 3.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    padding: EdgeInsets.only(top: 30),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("Ajouter un texte ici!!!"),
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info,
                            size: 20,
                            color: Colors.teal,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Annonces",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
