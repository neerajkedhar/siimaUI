import 'package:flutter/material.dart';
import 'package:siima/screens/profile_submission.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    void _navigateToNextScreen(BuildContext context) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ProfileSubmission()));
    }

    return Scaffold(
      backgroundColor: Color(0xffe1cfb7),
      appBar: AppBar(
        backwardsCompatibility: false,
        toolbarHeight: 2,
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              color: Colors.black,
              // ignore: prefer_const_literals_to_create_immutables
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  children: const [
                    Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 200,
                    ),
                    Text(
                      "K Anilbabu",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Sr graphic designer",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "ph: 9848748879",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                // ignore: avoid_print
                onTap: () {
                  _navigateToNextScreen(context);
                },
                // ignore: prefer_const_constructors
                leading: Icon(
                  Icons.thumb_up,
                  color: Colors.black,
                ),
                title: Text("Like"),
              ),
            ),
            Divider(thickness: 2),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
                title: Text("Share"),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                // ignore: avoid_print
                onTap: () {
                  _navigateToNextScreen(context);
                },
                // ignore: prefer_const_constructors
                leading: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                title: Text("More"),
              ),
            ),
            Divider(thickness: 2),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text("Contact Us"),
              ),
            ),
            Divider(thickness: 2),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
