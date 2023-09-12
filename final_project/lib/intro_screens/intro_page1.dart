import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage1 extends StatelessWidget {
  IntroPage1({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext) {
    return 
      Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple.shade900, Colors.purple.shade700, Colors.purple.shade600],
              ),
            ), 
            child: Column(
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          
                          child: Animate(
                            effects: [
                              FadeEffect(), 
                              ThenEffect(delay: 250.ms),ShakeEffect()
                            ],
                            child: Text('Sleep Calculator',
                              style:TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                              color: Colors.white  
                            ),),
                          ),
                        ),
                      ],
                    )],
                ),
                Animate(
                  effects: [
                    FadeEffect(delay: 1000.ms,duration: 500.ms),
                    ThenEffect(),ShakeEffect(),
                  ],
                  child: Image.network('https://sph.umich.edu/pursuit/2020posts/2020images/Sleep101.jpg',
                  width: 350,
                  height: 350,
                  ),
                )
              
              ],
            ),             
          );
    
  }
}