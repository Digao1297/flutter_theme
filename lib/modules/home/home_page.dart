import 'package:flutter/material.dart';
import 'package:flutter_theme/utils/config.dart';
import 'package:flutter_theme/utils/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme app'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            //Botão responsavel por alterar o tema
            child: IconButton(
              //verifica qual tema está selecionado e muda o icone
              icon: Icon(appChangeTheme.currentTheme() == ThemeMode.dark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny_rounded),
              onPressed: () {
                print(appChangeTheme.currentTheme());
                appChangeTheme.switchTheme();
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: "Teste",
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }
}
