// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siima/authentication/phone_number.dart';
import 'package:siima/screens/home_page.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen(this.verificationId, this.phoneNumber, {Key? key})
      : super(key: key);
  String verificationId;
  String phoneNumber;

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

TextEditingController controller1 = new TextEditingController();
TextEditingController controller2 = new TextEditingController();
TextEditingController controller3 = new TextEditingController();
TextEditingController controller4 = new TextEditingController();
TextEditingController controller5 = new TextEditingController();
TextEditingController controller6 = new TextEditingController();

class _OTPScreenState extends State<OTPScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1cfb7),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    Text(widget.phoneNumber,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange)),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PhoneNumber()));
                      },
                      icon: Icon(Icons.edit),
                      color: Colors.orange,
                    )
                  ],
                ),
                Text("Enter OTP",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Text("you will get an OTP via SMS to \n${widget.phoneNumber}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    otpBoxBuilder(controller1, true, false, context),
                    otpBoxBuilder(controller2, true, false, context),
                    otpBoxBuilder(controller3, true, false, context),
                    otpBoxBuilder(controller4, true, false, context),
                    otpBoxBuilder(controller5, true, false, context),
                    otpBoxBuilder(controller6, true, true, context)
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PhoneNumber()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Not received OTP? ',
                      style: TextStyle(color: Colors.black),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () => fun(),
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffc56f22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // <-- Radius
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);

      if (authCred.user != null) {
        prefs.setBool('signedIn', true);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        print("signed in");
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Some Error Occured. Try Again Later')));
    }
  }

  fun() {
    String code = controller1.text +
        controller2.text +
        controller3.text +
        controller4.text +
        controller5.text +
        controller6.text;

    if (code.length == 6) {
      AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId, smsCode: code);
      signInWithPhoneAuthCred(phoneAuthCredential);
    }
  }
}

Widget otpBoxBuilder(
    TextEditingController controller, bool first, last, BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: 70,
    width: 50,
    child: TextField(
      controller: controller,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
      // ignore: avoid_print
      onChanged: (newText) {
        if (newText.length == 1 && last == false) {
          FocusScope.of(context).nextFocus();
        }
        if (newText.length == 1 && first == false) {
          FocusScope.of(context).previousFocus();
        }
        if (last == true) {
          TextInputAction.done;
        }
      },
      textInputAction: last ? TextInputAction.done : TextInputAction.next,
      keyboardType: TextInputType.number,

      maxLength: 1,

      decoration: InputDecoration(
        border: InputBorder.none,
        counterText: '',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      textAlign: TextAlign.center,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
  );
}
