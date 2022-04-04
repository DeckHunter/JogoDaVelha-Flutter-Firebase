import 'package:flutter/material.dart';

class JogoDaVelha extends StatefulWidget {
  const JogoDaVelha({Key? key}) : super(key: key);
  @override
  State<JogoDaVelha> createState() => _JogoDaVelhaState();
}

class _JogoDaVelhaState extends State<JogoDaVelha> {
  String _vencedor = 'Empate';
  String _11 = '';
  String _12 = '';
  String _13 = '';
  String _21 = '';
  String _22 = '';
  String _23 = '';
  String _31 = '';
  String _32 = '';
  String _33 = '';
  String _type = 'X';
  @override
  Widget build(BuildContext context) {
    print('Vencedor : ' + Verificar());

    TelaVencedor(Verificar());

    return Scaffold(
      body: Center(
        heightFactor: MediaQuery.of(context).size.height,
        widthFactor: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _11 == '') {
                        _11 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _11 == '') {
                        _11 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_11),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _12 == '') {
                        _12 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _12 == '') {
                        _12 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_12),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _13 == '') {
                        _13 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _13 == '') {
                        _13 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_13),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _21 == '') {
                        _21 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _21 == '') {
                        _21 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_21),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _22 == '') {
                        _22 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _22 == '') {
                        _22 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_22),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _23 == '') {
                        _23 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _23 == '') {
                        _23 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_23),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _31 == '') {
                        _31 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _31 == '') {
                        _31 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_31),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _32 == '') {
                        _32 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _32 == '') {
                        _32 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_32),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (_type == 'X' && _33 == '') {
                        _33 = _type;
                        _type = "O";
                      }
                      if (_type == 'O' && _33 == '') {
                        _33 = _type;
                        _type = "X";
                      }
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text(_33),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String Verificar() {
    //=====================| Casos Do X Vencer |=====================
    if (_11 == 'X' && _12 == 'X' && _13 == 'X') {
      _vencedor = 'X';
    }
    if (_21 == 'X' && _22 == 'X' && _23 == 'X') {
      _vencedor = 'X';
    }
    if (_31 == 'X' && _32 == 'X' && _33 == 'X') {
      _vencedor = 'X';
    }
    if (_11 == 'X' && _21 == 'X' && _31 == 'X') {
      _vencedor = 'X';
    }
    if (_12 == 'X' && _22 == 'X' && _32 == 'X') {
      _vencedor = 'X';
    }
    if (_13 == 'X' && _23 == 'X' && _33 == 'X') {
      _vencedor = 'X';
    }
    if (_11 == 'X' && _22 == 'X' && _33 == 'X') {
      _vencedor = 'X';
    }
    if (_13 == 'X' && _22 == 'X' && _31 == 'X') {
      _vencedor = 'X';
    }
    //=====================| Casos Do O Vencer |=====================
    if (_11 == 'O' && _12 == 'O' && _13 == 'O') {
      _vencedor = 'O';
    }
    if (_21 == 'O' && _22 == 'O' && _23 == 'O') {
      _vencedor = 'O';
    }
    if (_31 == 'O' && _32 == 'O' && _33 == 'O') {
      _vencedor = 'O';
    }
    if (_11 == 'O' && _21 == 'O' && _31 == 'O') {
      _vencedor = 'O';
    }
    if (_12 == 'O' && _22 == 'O' && _32 == 'O') {
      _vencedor = 'O';
    }
    if (_13 == 'O' && _23 == 'O' && _33 == 'O') {
      _vencedor = 'O';
    }
    if (_11 == 'O' && _22 == 'O' && _33 == 'O') {
      _vencedor = 'O';
    }
    if (_13 == 'O' && _22 == 'O' && _31 == 'O') {
      _vencedor = 'O';
    }
    return _vencedor;
  }

  void TelaVencedor(String v) {
    if (v != '') {
      switch (v) {
        case 'Empate':
          print('Empate');
          Navigator.of(context).pushReplacementNamed('/empate');
          break;
        case 'X':
          print('X Venceu');
          Navigator.of(context).pushReplacementNamed('/vitoria-x');
          break;
        case 'O':
          print('O Venceu');
          Navigator.of(context).pushReplacementNamed('/vitoria-o');
          break;
        default:
      }
    }
  }
}
