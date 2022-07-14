import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget{
  final IconData icon; //we cannt pass icon, but we can do this instead
  final Color iconColor;
  final String text;
  final double iconSize;

  const IconAndTextWidget({Key? key, required this.icon, required this.text, required this.iconColor, required this.iconSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color:iconColor, size: iconSize,),
        const SizedBox(width: 5,),
        SmallText(paramText: text,)
      ],
    );
  }

}