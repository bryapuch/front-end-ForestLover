
import 'package:flutter/material.dart';

class ButtonsComponents extends StatelessWidget {
  const ButtonsComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        alignment: AlignmentDirectional.center,
        padding: EdgeInsetsDirectional.all(10.0),
        width: screenSize.width,
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_crearBtnLogin(context), _crearBtnRegistrar()],
        ),
      ),
    );
  }

  Widget _crearBtnLogin( BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55.0,
      width: 170,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(7.0))),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all<Size>(const Size(165.0, 50.0)),
          // minimumSize: MaterialStateProperty.all<Size>(Size(100.0, 50.0)),
        ),
        onPressed: () {
          _showLoginPage(context);
        },
        child: const Text(
          'INICIAR SESIÓN',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _crearBtnRegistrar() {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 5.0),
      alignment: Alignment.center,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          fixedSize: MaterialStateProperty.all<Size>(const Size(170.0, 55.0)),
          // minimumSize: MaterialStateProperty.all<Size>(Size(100.0, 50.0)),
        ),
        onPressed: () {},
        child: const Text(
          'Registrar',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }

  void _showLoginPage(BuildContext context) {
    Navigator.of(context).pushNamed("/login");
  }
}
