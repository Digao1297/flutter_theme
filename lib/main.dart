import 'package:flutter/material.dart';
import 'package:flutter_theme/modules/app_widget.dart';
import 'package:flutter_theme/utils/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  //metodo responsavel pro inicar algumas dependencias do flutter antes de inicializar o app
  WidgetsFlutterBinding.ensureInitialized();
  //criando uma instancia do SharedPreferences
  await SharedPreferences.getInstance().then((prefs) {
    //recuperando o valor salvo no sharedPreferences
    sharedTheme = prefs.getBool('theme');
  });
  runApp(AppFlutterTheme());
}
