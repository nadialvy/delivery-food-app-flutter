import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';

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
    this.paramSize = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      paramText,
      maxLines: 1,
      overflow: paramOverFlow,
      style: TextStyle(
        color: paramColor,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        fontSize: paramSize == 0 ? Dimensions.font18 : paramSize,
      ),
    );
  }


}