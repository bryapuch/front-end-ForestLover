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
            const BackgroundComponent(),
            Positioned(
                top: screenPage.height / 2,
                child: const Text(
                  'Forest Lover',
                  textDirection: TextDirection.rtl,
                )),
            const Text('Lover'),
            const Positioned(bottom: 0.0, child: ButtonsComponents())
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.6),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Inicio',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Buscar',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.question_answer),
            ),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(Icons.person),
            ),
          ],
        ));
  }
}
