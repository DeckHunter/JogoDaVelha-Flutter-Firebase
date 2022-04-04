import 'package:app_jogo_da_velha_firebase/resultado_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth_view.dart';
import 'jogo_da_velha_view.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jogo Da Velha',
        //home: const JogoDaVelha(),

        initialRoute: '/',
        routes: {
          '/': (context) => JogoDaVelha(),
          '/auth': (context) => AuthUser(),
          '/vitoria-x': (context) => VitoriaX(),
          '/vitoria-o': (context) => VitoriaO(),
          '/empate': (context) => Empate(),
        }
        //'/home': (context) => HomePage(),
        //'/Tinder': (context) => TinderTela(),
        );
  }
}
