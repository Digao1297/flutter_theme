import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_theme/utils/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

//classe que usa o mixin changeNitifies para realizar as notificações dos eventos
class AppChangeTheme with ChangeNotifier {
  //variavel responsavel por definir o tema atual true = dark, false = light
  static bool _isDark = false;
  SharedPreferences shared;

  AppChangeTheme() {
    SharedPreferences.getInstance().then((prefs) {
      shared = prefs;
      //verificanto qual o tema está selecionado no sistema e salva em cache
      if (SchedulerBinding.instance.window.platformBrightness ==
          Brightness.dark) {
        //verifica se existe algo em cache
        if (sharedTheme != null) {
          _isDark = sharedTheme;
          //notifica para a atualização da tela
          notifyListeners();
        } else {
          _isDark = true;
          shared.setBool('theme', _isDark);
          notifyListeners();
        }
      } else {
        if (sharedTheme != null) {
          _isDark = sharedTheme;
          notifyListeners();
        } else {
          shared.setBool('theme', _isDark);
          notifyListeners();
        }
      }
    });
  }

  //retorna o tema atual do app
  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  //muda o tema do app e dispara o evento para atualizar a tela
  void switchTheme() async {
    _isDark = !_isDark;
    shared.setBool("theme", _isDark);
    notifyListeners();
  }
}
