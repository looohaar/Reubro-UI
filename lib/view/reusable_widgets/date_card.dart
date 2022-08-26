import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DateCard extends StatelessWidget {
  const DateCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:  BoxDecoration(
        color: Colors.white,
        border: Border.all(
        width: 10,
        color: Colors.blue
        )

      ),
    );
    
  }
}