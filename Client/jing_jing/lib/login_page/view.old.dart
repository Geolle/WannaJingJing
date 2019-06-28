import 'dart:io';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: null,
    backgroundColor: Colors.black12,
    body: Container(
        // margin: EdgeInsets.symmetric(vertical: 150.0, horizontal: 30.0),
        // alignment: Alignment.center,
        child: Column(
          children: [
          Row(children: [
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                  // border: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //         color: Colors.white,
                  //         style: BorderStyle.solid,
                  //         width: 2.0)),
                  labelText: "PhoneNumber",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ]),
          Row(
            children: [
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    // border: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.white,
                    //         style: BorderStyle.solid,
                    //         width: 2.0)),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: <Widget>[
          //     FlatButton(
          //       onPressed:()=>{} ,
          //       child: Text("Forget Password?"),
          //     )
          //   ],
          // )
        ])),
  );
}