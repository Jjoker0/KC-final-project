import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'clock_page.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(7, 25, 82, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //write under here
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()) );
              });
            },
            child: Text("Home Page",
            style:
            TextStyle(
              fontSize: 34
            ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(1, 1, 1, 0))
            ),            
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Clock()));
              });
            },
            child: Text("Clock",
            style: 
            TextStyle(
              fontSize: 34
            ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(1,1,1,0))
            ),
            ),
          ],//write on top of this
        )
      ),
      appBar: AppBar(
        
        backgroundColor: Color.fromRGBO(135, 228, 213, 1),
        title: Center(child: Text("Sleep CALC",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 44,
        ),
        )),
      ),
      body: Container(
            width: 2000,
            height: 1600,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromRGBO(7, 25,82 ,1 ), Color.fromRGBO(11,102 ,106 ,1 ), Color.fromRGBO(53,162,159,1)],
              ),
            ),
            child: Column(
              children: [
                Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.5,
                          color: Colors.grey
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(7, 25,82 ,1 ), Color.fromRGBO(11,102 ,106 ,1 ), Color.fromRGBO(53,162,159,1)],
                        ),
                      ), 
                      child: Column(
                        children: [
                          Text(
                            "Did you know that good sleep may help you maintain or lose weight",
                            style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),                          
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.5,
                          color: Colors.grey,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(7, 25,82 ,1 ), Color.fromRGBO(11,102 ,106 ,1 ), Color.fromRGBO(53,162,159,1)],
                        ),
                      ),
                      child: Text(
                        "Good sleep can improve concentration and productivity",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.5,
                          color: Colors.grey,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(7, 25,82 ,1 ), Color.fromRGBO(11,102 ,106 ,1 ), Color.fromRGBO(53,162,159,1)],
                        ),
                      ),
                      child: Text(
                        'Good sleep can maximize athletic performance',
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],//write on top of this
                )
            )],
            ),
        ),
    );
  }
}