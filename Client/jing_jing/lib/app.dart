import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

import 'home_page/page.dart';
import 'login_page/page.dart';

Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(pages: <String, Page<Object, dynamic>>{
      "home": HomePage(),
      "login": LoginPage(),
    }),
  ]);
  return MaterialApp(
    title: "Wanna Jing Jing",
    debugShowCheckedModeBanner: false,
    // debugShowMaterialGrid: false,
    theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: "Quicksand",
        // primarySwatch: Colors.blue,
        backgroundColor: Colors.black45),
    home: routes.buildPage("login", null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
