import 'package:flutter/material.dart';
import 'package:front_end_forestlover/src/components/HomePage/background.dart';
import 'package:front_end_forestlover/src/components/HomePage/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final styleESPOL = const TextStyle(
      color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    var screenPage = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          BackgroundComponent(),
          Positioned(
              top: screenPage.height / 2,
              child: Text(
                'Forest Lover',
                textDirection: TextDirection.rtl,
              )),
          Text('Lover'),
          Positioned(bottom: 0.0, child: ButtonsComponents())
        ],
      ),
    );
  }

}
