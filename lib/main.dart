import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void OnClicked() {
    setState(() {
      var random = new Random();
      leftDiceNumber = random.nextInt(6) + 1;
      rightDiceNumber = random.nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Expanded(
              child:
              TextButton(
                onPressed: () {
                  OnClicked();
                  print("Vous avez appuyé sur l'image de gauche");
                },
                child: Image.asset('asset/images/dice$leftDiceNumber.png',
                  width: 100,
                  height: 100,),
              ),
            ),
            Expanded(
                child:
                TextButton(
                    onPressed: () {
                      OnClicked();
                      print("Vous avez appuyé sur l'image de droite");
                    },
                    child: Image.asset('asset/images/dice$rightDiceNumber.png',
                      width: 100,
                      height: 100,)
                )
            ),
          ],
        ),
      ),
    );
  }
}







