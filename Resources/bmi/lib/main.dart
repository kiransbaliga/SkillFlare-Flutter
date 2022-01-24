import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        body: BMIBody(),
      ),
    );
  }
}

class BMIBody extends StatefulWidget {
  const BMIBody({
    Key key,
  }) : super(key: key);

  @override
  State<BMIBody> createState() => _BMIBodyState();
}

class _BMIBodyState extends State<BMIBody> {
  double height, weight, result = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              '$result',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Column(
            children: [
              Text('Enter your Height'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    onChanged: (s) {
                      height = double.tryParse(s);
                    },
                    textAlign: TextAlign.center,
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text('Enter your Weight'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    onChanged: (s) {
                      weight = double.tryParse(s);
                    },
                    textAlign: TextAlign.center,
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              width: 250,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = weight / (height * height);
                      });
                    },
                    child: Text('Find My BMI')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}