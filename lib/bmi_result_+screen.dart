import 'package:flutter/material.dart';

class BmiResultScreen extends StatefulWidget {
  final int age;
  final int Result;
  final bool ismale;

  const BmiResultScreen({
    Key? key,
    required this.age,
    required this.Result,
    required this.ismale,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BmiResultScreenState();
  }
}

class _BmiResultScreenState extends State<BmiResultScreen> {
  late int age;
  late int Result;
  late bool ismale;

  @override
  void initState() {
    age = widget.age;
    Result = widget.Result;
    ismale = widget.ismale;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 13, 23),
      
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 1, 13, 23),
        title: Center(
          child: Text(
            "BMI RESULT",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 2, 20, 35),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " GENDER : ${ismale ? 'Male' :'Female'}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " RESULT : $Result",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "AGE : $age",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}