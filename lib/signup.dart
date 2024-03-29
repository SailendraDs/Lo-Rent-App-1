import 'package:cloud_firestore/cloud_firestore.dart';
import 'sign.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: 100.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -120,
              top: -70,
              child: Image.asset(
                "assets/bg1.png",
                color: Color(0xFF5a20c7),
                scale: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 40),
              child: Image.asset(
                "assets/app_icon.png",
                width: 100.0,
                height: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 145),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 40.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 70.0,
                              fontFamily: "LobsterTwo",
                              color: Colors.white),
                        ),
                        Text(
                          "Login to Continue",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Poiret",
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  SizedBox(
                    height: 100.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Sign(
                                    tag: "signup",
                                  )));
                    },
                    child: Hero(
                      tag: "signup",
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 60,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Color(0xFF70A1D7), width: 1.0),
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF5a20c7),
                                  blurRadius: 7.0,
                                  offset: Offset(0, 7.0))
                            ],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Material(
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              "Login to get Started",
                              style: TextStyle(
                                  fontFamily: "Poiret",
                                  color: Colors.black,
                                  fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}