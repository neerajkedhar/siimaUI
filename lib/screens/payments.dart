// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1cfb7),
      appBar: AppBar(
        backwardsCompatibility: false,
        backgroundColor: Colors.black,
        title: Center(child: Text("Anju Siima Technologies Pvt.Ltd")),
      ),
      body: ListView(
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Payments History",
              style: TextStyle(fontSize: 20),
            ),
          ),
          // ignore: avoid_unnecessary_containers

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 60,
                width: 60,
                child: const Center(
                    child: Text('K',
                        style: TextStyle(color: Colors.white, fontSize: 30))),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("K AnilBabu", style: TextStyle(fontSize: 20)),
                        SizedBox(height: 1),
                        Text("27th Sept'21"),
                        SizedBox(height: 10),
                        Text("Advance"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Advance"),
                        SizedBox(height: 5),
                        Text("+12,000", style: TextStyle(color: Colors.red)),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 60,
                width: 60,
                child: const Center(
                    child: Text('K',
                        style: TextStyle(color: Colors.white, fontSize: 30))),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("K AnilBabu", style: TextStyle(fontSize: 20)),
                        SizedBox(height: 1),
                        Text("27th Sept'21"),
                        SizedBox(height: 10),
                        Text("Bonus"),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Advance"),
                        SizedBox(height: 5),
                        Text("+12,000", style: TextStyle(color: Colors.red)),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          Divider(
            thickness: 2,
            indent: 18,
            endIndent: 18,
          ),
        ],
      ),
    );
  }
}
