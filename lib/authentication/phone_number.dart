// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:siima/authentication/otp_screen.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController phoneNumber = TextEditingController();
  late String verificationId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  // ignore: prefer_const_literals_to_create_immutables
                  Column(children: [
                    Text("ATTENDENCE",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text("DAILY MONITORING")
                  ]),
                  SizedBox(height: 50),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("ENTER YOUR \nMOBILE NUMBER",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(height: 50),
                            TextField(
                              keyboardType: TextInputType.phone,
                              controller: phoneNumber,
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone Number",
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 6.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      phoneNumber.text.length == 10
                          ? verify()
                          : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Please enter a valid phone number"),
                            ));
                    },
                    child: Text('Send OTP'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffc56f22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  verify() async {
    await _auth.verifyPhoneNumber(
        phoneNumber: "+91${phoneNumber.text}",
        verificationCompleted: (phoneAuthCredential) async {},
        verificationFailed: (verificationFailed) {
          print(verificationFailed);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$verificationFailed"),
          ));
        },
        codeSent: (verificationID, resendingToken) async {
          setState(() {
            this.verificationId = verificationID;
          });
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OTPScreen(
                    verificationId,
                    phoneNumber.text,
                  )));
        },
        codeAutoRetrievalTimeout: (verificationID) async {});
  }
}
