import 'package:flu_prac/Provider/Riverpod/NotifierProvider.dart';
import 'package:flu_prac/Provider/Riverpod/counterwithProvider.dart';
import 'package:flu_prac/Provider/Riverpod/riverText.dart';
import 'package:flu_prac/formReletedWidgets/RadioButton.dart';
import 'package:flu_prac/formReletedWidgets/dropDown.dart';
import 'package:flu_prac/appBarReleted/searchBar.dart';
import 'package:flu_prac/formReletedWidgets/switchButton.dart';
import 'package:flu_prac/navigation/bottomNavBar/mainBottomScr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'formReletedWidgets/CheckBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: searchPro(),
      ),
    );
  }
}

