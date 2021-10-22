import 'package:flutter/material.dart';
import 'package:islami_fri/HomePage.dart';
import 'package:islami_fri/quran/SuraDetailsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyThemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedIconColor = Color.fromRGBO(8, 8, 8, 1.0);
  static final unSelectedIconColor = Color.fromRGBO(255, 255, 255, 1.0);
  static final colorBlack = Color.fromRGBO(5, 5, 5, 1.0);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors
                    .black), // set backbutton color here which will reflect in all screens.
          ),
          primaryColor: MyThemeData.primaryColor,
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: MyThemeData.primaryColor)),
      title: 'Flutter Demo',
      routes: {
        HomePage.routeName: (buildContext) => HomePage(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen()
      },
      initialRoute: HomePage.routeName,
    );
  }
}
