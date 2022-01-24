import 'package:flutter/material.dart';

class BackgroundComponent extends StatelessWidget {
  const BackgroundComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage("assets/background.jpg"), fit: BoxFit.cover),
      )
    );
  }
}
