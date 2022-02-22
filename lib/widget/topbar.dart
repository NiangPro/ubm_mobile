// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.notifications, size: 28, color: Colors.teal[800]),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.settings, size: 28, color: Colors.teal[800]),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.teal,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bonjour.",
                    style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                  ),
                  Row(
                    children: [
                      Text(
                        "NiangPro",
                        style: TextStyle(color: Colors.teal, fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.teal,
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
