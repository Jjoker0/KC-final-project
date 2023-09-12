import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  Clock({Key? key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {

  TimeOfDay _timeOfDay = TimeOfDay(hour: 0, minute: 0);
  
  void _showTimePicker(){
    showTimePicker(context: context,
    initialTime: TimeOfDay.now()
    ).then((value) {
      setState(() {
        _timeOfDay= value!;
      });      
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 29, 149, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(135, 228, 213, 1),
        title: Center(child: Text('Clock 🕕',
        style: TextStyle(
          fontSize: 44,

        ),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString(),
            style: TextStyle(
              fontSize: 53,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            ),
            MaterialButton(
            onPressed: _showTimePicker,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Pick Time',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                ),),
            ),
            color: Color.fromRGBO(25, 116, 210, 1),
            ),
          ],
        )),
    );
  }
}