import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(
              child:
                TextButton(
                    onPressed: () { print("Vous avez appuyé sur l'image de gauche");},
                    child:Image.asset('asset/images/dice1.png')
    )
    ),

          Expanded(
              child:
                  TextButton(
                      onPressed: () { print("Vous avez appuyé sur l'image de droite");},
                      child: Image.asset('asset/images/dice2.png')
                  )
          ),
        ],

      ),
    );
  }
}
