import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_glow/flutter_glow.dart';

class IntroPage3 extends StatelessWidget {
  IntroPage3({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext) {
    return Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple.shade900, Colors.purple.shade700, Colors.purple.shade600],
            ),
          ),
          child: Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Animate(
                    effects: [
                      RotateEffect(delay: 450.ms,duration: 650.ms)
                    ],
                    child: Text('I Hope You Like The ',
                    style: 
                    TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                              Shadow(
                                offset: Offset(10, 15),
                                blurRadius: 5,
                                color: const Color.fromARGB(255, 34, 34, 34)
                              )
                            ]
                    ),),
                  ),
                  Animate(
                    effects: [
                      RotateEffect(delay: 450.ms,duration: 650.ms)
                    ],
                    child: Text('App 👌',
                    style: 
                    TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                              Shadow(
                                offset: Offset(10, 15),
                                blurRadius: 5,
                                color: const Color.fromARGB(255, 34, 34, 34)
                              )]),),
                  )
                          ]
              ),
            ),
          ),
        );
  }
}