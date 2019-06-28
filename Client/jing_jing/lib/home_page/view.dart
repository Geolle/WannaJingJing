import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Wanna Jing Jing"),
        leading: Icon(Icons.face),
        actions: <Widget>[Text("Action 1"), Text("Action 2")],
      ),
      body: Column(
        children: <Widget>[Text("Wanna Jing Jing")],
      ));
}
