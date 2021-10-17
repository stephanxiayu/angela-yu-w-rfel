import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Dice(),
    );
  }
}

class Dice extends StatefulWidget {


  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
 int leftDiceNumber=1;
 int rightDiceNumber=1;

 
  void changeWurfel(){
    setState(() {
              leftDiceNumber= Random().nextInt( 6)+1;
                rightDiceNumber= Random().nextInt( 6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(elevation: 9,
        title: Center(child: Text("Würfel")),
      backgroundColor: Colors.red,),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(children: [
          Expanded(
            child: FlatButton(onPressed: (){changeWurfel();
             },
              child: Image.asset("lib/images/dice$leftDiceNumber.png"),),),
          
          Expanded(
            child: FlatButton(onPressed: (){changeWurfel();
             },
              child: Image.asset("lib/images/dice$rightDiceNumber.png"),),),
          
        ],),
      ),
    );
  }
}
