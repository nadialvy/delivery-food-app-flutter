import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/utils/colors.dart';

class SmallText extends StatelessWidget{
  Color? paramColor; //pass a color variable
  final String paramText; 
  double paramSize;
  double paramHeight;

  SmallText({
    Key? key,
    this.paramColor = const Color.fromARGB(255, 77, 76, 75), //default color
    required this.paramText,
    this.paramSize = 14,
    this.paramHeight = 1.1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      paramText,
      style: TextStyle(
        color: paramColor,
        fontFamily: 'Poppins',
        fontSize: paramSize,
        height: paramHeight
      ),
    );
  }


}