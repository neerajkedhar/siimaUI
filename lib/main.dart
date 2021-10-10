// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:siima/authentication/open_screen.dart';
import 'package:siima/authentication/otp_screen.dart';
import 'package:siima/authentication/phone_number.dart';
import 'package:siima/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SIIMA',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.dark),
        ),
        home: FutureBuilder(
            future: _fbApp,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              } else if (snapshot.hasData) {
                return MyHomePage();
              } else {
                return CircularProgressIndicator();
              }
            }));
  }
}

//MyHomePage(),
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool isSignedIn;
  Future<bool?> gettingInstence() async {
    final prefs = await SharedPreferences.getInstance();
    //prefs.clear();

    isSignedIn = prefs.getBool("signedIn") ?? false;

    return isSignedIn;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: gettingInstence(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                body: isSignedIn == true ? HomePage() : OpenScreen());
          } else {
            return Scaffold(
              body: OpenScreen(),
            );
          }
        });
  }
}
//OTPScreen();