import 'package:final_project/intro_screens/intro_page1.dart';
import 'package:final_project/intro_screens/intro_page2.dart';
import 'package:final_project/intro_screens/intro_page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,

            onPageChanged:(index) {
              setState(() {
                onLastPage = (index ==2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),  
      ],
      ),
      //dot indicator
      Container(
        alignment: Alignment(-0,0.9),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //skip
            GestureDetector(
              onTap:() {
                _controller.jumpToPage(2);
              },
              child: Text('Skip'),
            ),
            //dot indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3),
              
              // next or done
              onLastPage?
              GestureDetector(
                onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                },),);
              },
              child: Text('Done'),
              ):
              GestureDetector(
                onTap: () {

                _controller.nextPage(
                  duration: Duration(milliseconds: 500), 
                curve: Curves.easeIn
                );
                
              },
              child: Text('Next'),
              ),

          ],
        )
          )
        ],
      ) 
    );
  }
}