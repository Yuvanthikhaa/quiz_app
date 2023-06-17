//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:sec3/quiz.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startScreen, {super.key});
  final void Function() startScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Opacity(
          // opacity: 0.5,
          //child:
          Center(
            child: Image.asset(
              'assets/logo.png',
              width: 300,
              height: 250,
              color: Color.fromRGBO(255, 255, 255, 150),
            ),
            //),
          ),
          /* SizedBox(
            height: 0,
          ),*/
          const Text(
            "Learn Flutter the easy way",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          /*SizedBox(
            height: 30,
          ),*/
          OutlinedButton.icon(
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              onPressed: startScreen,
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(150, 171, 48, 200)),
              label: const Text(
                " Start quiz",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
