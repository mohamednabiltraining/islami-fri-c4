// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami_fri/hadeth/HadethTab.dart';
import 'package:islami_fri/quran/QuranTab.dart';
import 'package:islami_fri/radio/RadioTab.dart';
import 'package:islami_fri/sebha/SebhaTab.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Islami',
              style: TextStyle(color: MyThemeData.colorBlack),
            ),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.primaryColor),
            child: BottomNavigationBar(
              onTap: (index) {
                currentPage = index;
                setState(() {});
              },
              currentIndex: currentPage,
              selectedItemColor: MyThemeData.selectedIconColor,
              unselectedItemColor: MyThemeData.white,
              backgroundColor: MyThemeData.primaryColor,
              items: [
                BottomNavigationBarItem(
                    label: 'Quran',
                    icon: Image.asset(
                      'assets/images/ic_moshaf.png',
                      width: 36,
                    )),
                BottomNavigationBarItem(
                    label: 'ahadeth',
                    icon: Image.asset('assets/images/ic_book.png', width: 36)),
                BottomNavigationBarItem(
                    label: 'sebha',
                    icon: Image.asset('assets/images/ic_sebha.png', width: 36)),
                BottomNavigationBarItem(
                    label: 'radio',
                    icon: Image.asset('assets/images/ic_radio.png', width: 36)),
              ],
            ),
          ),
          body: Container(child: getCurrentPage()),
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    if (currentPage == 0) {
      return QuranTab();
    } else if (currentPage == 1) {
      return HadethTab();
    } else if (currentPage == 2) {
      return SebhaTab();
    } else
      return RadioTab();
  }
}
