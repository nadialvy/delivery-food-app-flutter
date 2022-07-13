import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget{
  final IconData icon; //we cannt pass icon, but we can do this instead
  final Color iconColor;
  final String text;

  const IconAndTextWidget({Key? key, required this.icon, required this.text, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color:iconColor),
        const SizedBox(width: 5,),
        SmallText(paramText: text,)
      ],
    );
  }

}