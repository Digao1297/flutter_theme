import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/modules/home/home_page.dart';
import 'package:flutter_theme/utils/config.dart';

class AppFlutterTheme extends StatefulWidget {
  @override
  _AppFlutterThemeState createState() => _AppFlutterThemeState();
}

class _AppFlutterThemeState extends State<AppFlutterTheme> {
  @override
  void initState() {
    super.initState();
    //evento para atualizar a tela quando troca o tema
    appChangeTheme.addListener(() {
      // print('Change');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //tema atual
      themeMode: appChangeTheme.currentTheme(),
      //tema padrão
      theme: appTheme.themeLight,
      //tema dark
      darkTheme: appTheme.themeDark,
      title: "Theme App",
      home: HomePage(),
    );
  }
}
