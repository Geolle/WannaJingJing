import 'dart:io';
import 'dart:math';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: null,
    backgroundColor: Colors.black,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Do you",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontFamily: "Consola",
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.white70,
                        blurRadius: 8,
                        offset: Offset.fromDirection(pi / 3, 4))
                  ]),
            )
          ],
        ),
        Container(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Wanna ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Consola",
                shadows: [
                  Shadow(
                      color: Colors.white,
                      blurRadius: 6,
                      offset: Offset.fromDirection(pi / 3, 4))
                ],
              ),
            ),
            Text(
              "Jing Jing?",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Consola",
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.white,
                      blurRadius: 6,
                      offset: Offset.fromDirection(pi / 3, 4))
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "Enter your number",
                  hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1.0)),
                  labelText: "Mobile",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.white70),
                  // suffixIcon: Container(
                  //   width: 10,
                  //   height: 5,
                  //   padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  //   // child: Icon(
                  //   //   Icons.phone_android,
                  //   //   color: Colors.white,
                  //   //   size: 48,
                  //   // ),
                  // ),
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                obscureText: true,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                    // suffixIcon: Icon(
                    //   Icons.lock,
                    //   color: Colors.white,
                    //   size: 48,
                    // ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0)),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.white70)),
              ),
            )
          ],
        ),
        Container(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                elevation: 10,
                onPressed: () => {},
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueGrey,
                highlightColor: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white)),
              ),
            )
          ],
        ),
        Container(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP FOR AN ACCOUNT",
              style: TextStyle(color: Colors.white70),
            )
          ],
        )
      ],
    ),
  );
}
