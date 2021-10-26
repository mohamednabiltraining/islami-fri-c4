// ignore_for_file: file_names, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami_fri/quran/quran_tab.dart';
import 'package:islami_fri/quran/sura_details.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
  int suraIndex;

  SuraNameItem(this.suraName, this.suraIndex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(suraName, suraIndex));
      },
      child: Row(
        children: [
          //num of ayat
          Expanded(
            child: Text(
              ayatNumbers[suraIndex].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Container(
            width: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
          //name of sura
          Expanded(
              child: Text(
                  suraName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24)
              )
          )
          ,
        ],
      ),
    );
  }
}
