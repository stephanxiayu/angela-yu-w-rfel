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

class Dice extends StatelessWidget {
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
            child: FlatButton(onPressed: (){},
              child: Image.asset("lib/images/dice1.png"),),),
          
           Expanded(
            child: FlatButton(onPressed: (){},
              child: Image.asset("lib/images/dice2.png"),),
          ),
        ],),
      ),
    );
  }
}
