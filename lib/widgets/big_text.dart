import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/utils/colors.dart';

class BigText extends StatelessWidget{
  Color? paramColor; //pass a color variable
  final String paramText; 
  double paramSize;
  TextOverflow paramOverFlow;

  BigText({
    Key? key,
    this.paramColor = const Color(0xFF332d2b), //default color
    required this.paramText,
    this.paramOverFlow = TextOverflow.ellipsis,
    this.paramSize = 20
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      paramText,
      maxLines: 1,
      overflow: paramOverFlow,
      style: TextStyle(
        color: paramColor,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        fontSize: paramSize
      ),
    );
  }


}