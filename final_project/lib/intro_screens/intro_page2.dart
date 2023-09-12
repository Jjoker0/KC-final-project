import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


class IntroPage2 extends StatelessWidget {
  IntroPage2({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext) {
    return Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple.shade500, Colors.purple.shade700, Colors.purple.shade900],
            ),
          ),  
          child: 
          Column(
            children: [                         
              Row(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Animate(
                      effects: [
                        FadeEffect(),ThenEffect(delay: 125.ms),SlideEffect(duration: 200.ms),

                      ],
                      child: Text("The App Contains:",
                      style: 
                      TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,shadows: [
                        Shadow(
                          offset: Offset(10, 10),
                          blurRadius: 5,
                          color: const Color.fromARGB(255, 34, 34, 34)
                        )
                                    ]),
                      ),
                    ),
                  ),
                ],
              ),  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Animate(
                    effects: [
                      FadeEffect(delay:750.ms)
                    ],
                    child: Center(
                      child: Icon(
                        Icons.alarm,
                        color: Colors.grey,
                        size: 200,              
                      ),
                    ),
                  ),
                  Animate(
                    effects: [
                      FadeEffect(delay: 1500.ms)
                    ],
                    child: Center(
                      child: Text("Clock",
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(10, 10),
                            blurRadius: 5,
                            color: const Color.fromARGB(255, 34, 34, 34)
                          )
                        ]
                      ),),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                ],
              ),
            ],
          ),
          );
  }
}