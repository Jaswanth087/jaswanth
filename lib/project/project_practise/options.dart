import 'package:flutter/material.dart';
class Options extends StatelessWidget {
  String option;
  Options({Key? key,required this.option} ):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 3,color: Colors.red)
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(option),
                  Radio(
                      value: option,
                      groupValue: 2,
                      onChanged: (val){})
                ],
              ),
            ),
          ),
        ),SizedBox(height: 10,)
      ],
    );
  }
}
