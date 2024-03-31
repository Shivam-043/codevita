import 'package:codevita_codingjunior/MVVM/Views/home/home.dart';
import 'package:codevita_codingjunior/MVVM/viewModels/code/codeSaver.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Constants/themes.dart';
import 'MVVM/viewModels/navigationBar/problem_page_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => ProblemTabPage()),
            ChangeNotifierProvider(create: (context) => CodeSaver()),
          ],
          child: MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white).copyWith(background: Colors.black),
            ),
            home: HomePage(),
          ),
        );
      },
    );
  }
}


