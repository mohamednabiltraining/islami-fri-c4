import 'package:flutter/material.dart';
import 'package:islami_fri/home_page.dart';
import 'package:islami_fri/quran/sura_details.dart';
import 'package:islami_fri/theme_provider/my_themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
}
