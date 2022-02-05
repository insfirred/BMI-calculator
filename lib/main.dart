import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/result.dart';

void main(){
  runApp(MaterialApp(
    home: bmiCalculator(),
    routes: {
      '/result': (context)=>result()
    },
    debugShowCheckedModeBanner: false,
  ));
}

class bmiCalculator extends StatefulWidget {
  const bmiCalculator({ Key? key }) : super(key: key);

  @override
  _bmiCalculatorState createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {

  static const IconData maleIcon = IconData(0xe3c5, fontFamily: 'MaterialIcons');
  static const IconData femaleIcon = IconData(0xe261, fontFamily: 'MaterialIcons');
  var heightRating = 150.0;
  var weightRating = 60.0;
  var ageRating = 20.0;
  var height = 150.0;
  var weight = 60.0;
  var age = 20.0;
  var maleColor = Colors.grey[850];
  var femaleColor = Colors.grey[850];  
  double bmi = 20.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,10,10,0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              color: Colors.grey[850],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Text(
                          'Height',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'
                            )
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Text(
                          '${height.toStringAsFixed(0)} cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'
                            )
                          ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.grey,
                    thumbColor: Colors.grey,
                    inactiveColor: Colors.grey[700],
                    value: heightRating,
                    min: 80,
                    max: 210,
                    label: heightRating.round().toString(),
                    divisions: 130,
                    onChanged: (double value){
                      setState(() {
                        heightRating = value;
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              color: Colors.grey[850],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Text(
                          'Weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'
                            )
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Text(
                          '${weight.toStringAsFixed(0)} Kg',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'
                            )
                          ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.grey,
                    thumbColor: Colors.grey,
                    inactiveColor: Colors.grey[700],
                    value: weightRating,
                    min: 25,
                    max: 135,
                    label: weightRating.round().toString(),
                    divisions: 125,
                    onChanged: (double value){
                      setState(() {
                        weightRating = value;
                        weight = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              color: Colors.grey[850],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Text(
                          'Age',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'
                            )
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,15,0,15),
                        child: Text(
                          '${age.toStringAsFixed(0)} yrs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Anton'
                            )
                          ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.grey,
                    thumbColor: Colors.grey,
                    inactiveColor: Colors.grey[700],
                    value: ageRating,
                    min: 5,
                    max: 100,
                    label: ageRating.round().toString(),
                    divisions: 95,
                    onChanged: (double value){
                      setState(() {
                        ageRating = value;
                        age = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  color: maleColor,
                  child: FlatButton(
                    minWidth: 160,
                    height: 170,
                    onPressed: (){
                      setState(() {
                        femaleColor = Colors.grey[850];
                        maleColor = Colors.grey[600];
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          maleIcon,
                          color: Colors.white,
                          size: 120,
                          ),
                          Text(
                          'Male',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Anton'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  color: femaleColor,
                  child: FlatButton(
                    minWidth: 160,
                    height: 170,
                    onPressed: (){
                      setState(() {
                        femaleColor = Colors.grey[600];
                        maleColor = Colors.grey[850];
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          femaleIcon,
                          color: Colors.white,
                          size: 120,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Anton'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onPressed: (){
                bmi = (weight*10000)/(height*height);
                Navigator.pushNamed(context, '/result', arguments: bmi);
                // Navigator.pushNamed(context, '/result');
              },
              color: Colors.grey[850],
              minWidth: 150,
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Anton'
                ),),
            )
          ],
        ),
      ),
    );
  }
}
