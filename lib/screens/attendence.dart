// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:siima/screens/attendence_details.dart';

class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

fun(context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AttendenceDetails()));
}

class _AttendenceState extends State<Attendence> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe1cfb7),
        appBar: AppBar(
          backwardsCompatibility: false,
          title: Text("K Anilbabu"),
          actions: [
            Align(
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xffc56f22),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text("Reports"),
                      Icon(Icons.calendar_today_rounded, size: 20)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 30)
          ],
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Color(0xffc56f22),
              child: Row(
                children: const [
                  SizedBox(width: 18),
                  Icon(Icons.calendar_today_rounded,
                      size: 20, color: Colors.white),
                  SizedBox(width: 18),
                  Text(
                    "September - 2021",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  tile("01", "Wednesday", "present", context),
                  tile("02", "Thursday", "present", context),
                  tile("03", "Friday", "present", context),
                  tile("04", "Saturday", "Week Off", context),
                  tile("05", "Sunday", "Week Off", context),
                  tile("06", "Monday", "present", context),
                  tile("07", "Tuesday", "present", context),
                  tile("08", "Wednesday", "present", context),
                  tile("09", "Thursday", "present", context),
                  tile("10", "Friday", "present", context),
                  tile("11", "Saturday", "Week Off", context),
                  tile("12", "Sunday", "Week Off", context),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget tile(var date, day, present, BuildContext context) {
  return GestureDetector(
    onTap: () {
      fun(context);
    },
    child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("$date \nSep"),
            VerticalDivider(
              color: Color(0xffc56f22),
              thickness: 2,
            ),
          ],
        ),
        title: Text(day),
        subtitle: Text(present),
        trailing: SizedBox(
          width: 70,
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CheckingBox(present),
                SizedBox(width: 10),
                CheckingBoxer()
              ]),
        ),
      ),
    ),
  );
}

class CheckingBox extends StatefulWidget {
  CheckingBox(this.present, {Key? key}) : super(key: key);
  String present;
  @override
  _CheckingBoxState createState() => _CheckingBoxState();
}

class _CheckingBoxState extends State<CheckingBox> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    check = widget.present == "Week Off" ? false : true;
    return GestureDetector(
      onTap: () {
        setState(() {
          check = !check;
        });
        print("yooo $check");
      },
      child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: check ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          // ignore: prefer_const_constructors
          child: Icon(Icons.check, color: Colors.white)),
    );
  }
}

class CheckingBoxer extends StatefulWidget {
  const CheckingBoxer({Key? key}) : super(key: key);

  @override
  _CheckingBoxerState createState() => _CheckingBoxerState();
}

class _CheckingBoxerState extends State<CheckingBoxer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        // ignore: prefer_const_constructors
        child: Icon(Icons.clear, color: Colors.white));
  }
}
