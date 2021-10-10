// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AttendenceDetails extends StatefulWidget {
  const AttendenceDetails({Key? key}) : super(key: key);

  @override
  _AttendenceDetailsState createState() => _AttendenceDetailsState();
}

class _AttendenceDetailsState extends State<AttendenceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1cfb7),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("K Anilbabu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffc56f22),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Anju Siims Technologies Pvt.Ltd.",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Report Period : 01-09-2021 to 27-09-2021")
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Text("K Anilbabu"), Text("9848748879")],
                  ),
                  Text("25,000.00")
                ],
              ),
            ),
            Divider(thickness: 2, indent: 18, endIndent: 18),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Full Day - 21"),
                      Text("Half Day - 0")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("Paid leaves - 2"),
                      Text("Absent - 5")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Table(
                border: const TableBorder(
                    top: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid),
                    verticalInside: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid)),
                children: const [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Date"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Attendence"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Amount"))),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Table(
                border: const TableBorder(
                    bottom: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid),
                    verticalInside: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid)),
                children: const [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("1st Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("2nd Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("3rd Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("4th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Week off",
                                style: TextStyle(color: Color(0xffc56f22))))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("5th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Week off",
                                style: TextStyle(color: Color(0xffc56f22))))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("6th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("7th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("6th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("9th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("10th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("11th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Week off",
                                style: TextStyle(color: Color(0xffc56f22))))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("12th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Week off",
                          style: TextStyle(color: Color(0xffc56f22)),
                        ))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("12th Sep"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("Present"))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text("500.00"))),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Table(
                border: const TableBorder(
                    bottom: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid),
                    verticalInside: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid)),
                children: const [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text(""))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Total",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("25,000.00",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text(""))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Advance(-)",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("5000.00",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Table(
                border: const TableBorder(
                    bottom: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid),
                    verticalInside: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid)),
                children: const [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text(""))),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text("Total",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("25,000.00",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffc56f22),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Share",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                SizedBox(width: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffc56f22),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Download",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
