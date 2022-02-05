import 'package:flutter/material.dart';
import 'package:bmi_calculator/main.dart';

void main(){
  runApp(MaterialApp(
    home: result(),
  ));
}

class result extends StatefulWidget {
  const result({ Key? key }) : super(key: key);

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  String normalStatus = 'Great, you are normal :)';
  String lowStatus = 'You are underweight';
  String highStatus = 'Looks like your are overweight :(';
  String obeseStatus = 'You are in Obese condition';
  // String status = normalStatus;

  Widget getWidgetOne(double bmi){
    if(bmi<=18.00){
      return Text(
        'Looks like you are underweight',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Anton',
        ),
        );
    }else if(bmi>18.00 && bmi<=25.00){
      return Text(
        'Great, You are normal',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Anton',
        ),
        );
    }
    else if(bmi>25.00 && bmi<=29.00){
      return Text(
        'You are overweight',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Anton'
        ),
        );
    }
    else{
      return Text(
        'You are in obese condition',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Anton'
        ),
        );
    }
  }

  Widget getWidgetTwo(double bmi){
    if(bmi<=18.00){
      return Text(
        'Gain some weight',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontFamily: 'Anton',
        ),
        );
    }else if(bmi>18.00 && bmi<=25.00){
      return Text(
        'Keep maintaing it',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontFamily: 'Anton'
        ),
        );
    }
    else if(bmi>25.00 && bmi<=29.00){
      return Text(
        'You should exercise and workout',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontFamily: 'Anton'
        ),
        );
    }
    else{
      return Text(
        'You have to be serious about this',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontFamily: 'Anton'
        ),
        );
    }
  }

  @override

  Widget build(BuildContext context) {
    var bmi = ModalRoute.of(context)!.settings.arguments as double;
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 1),
          Card(
            color: Colors.grey[850],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              width: 400,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${bmi.toStringAsFixed(3)}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontFamily: 'Anton'
                  )
                  ),
                  getWidgetOne(bmi),
                  getWidgetTwo(bmi),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Developed and Designed by Kalash',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Anton',fontSize: 18,
                letterSpacing: 1
              ),
              ),
              Text(
                '© 2022',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Anton'
                ),
                )
            ],
          )
        ],
      ),
    );
  }
}
