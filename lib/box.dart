import 'package:flutter/material.dart';
import 'package:flutter_alphabet/utils/color_manager.dart';

class MyBox extends StatelessWidget {
  MyBox({Key? key}) : super(key: key);

  List<String> Alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  List<Color> color = ColorManager.color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alphabet'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              for (int i = 0; i < Alphabets.length; i++)
                Container(
                  height: 200,
                  width: 200,
                  color: color[i % color.length],
                  // margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      Alphabets[i],
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
