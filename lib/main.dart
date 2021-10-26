// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami_fri/home_page.dart';
import 'package:islami_fri/quran/sura_details.dart';
import 'package:islami_fri/theme_provider/my_themes.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => MyThemeProvider(),
      builder: (context, _) {
        final provider = Provider.of<MyThemeProvider>(context);
        return MaterialApp(
          themeMode: provider.themeMode,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          title: 'Flutter Demo',
          routes: {
            HomePage.routeName: (buildContext) => HomePage(),
            SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen()
          },
          initialRoute: HomePage.routeName,
        );
      }
    );
  }
}

String initBgImage(BuildContext context) {
  var provider = Provider.of<MyThemeProvider>(context);
  String darkBg = 'assets/images/bg_designed_dark.png';
  String lightBg = 'assets/images/main_background.png';
  return provider.isDark(context)? darkBg : lightBg;
}
