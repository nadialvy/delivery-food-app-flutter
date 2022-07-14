import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget{
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(paramText: text,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,))
            ),
            SizedBox(width: 10,),
            SmallText(paramText: '4.5'),
            SizedBox(width: 10,),
            SmallText(paramText: '1298'),
            SizedBox(width: 5,),
            SmallText(paramText: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1, iconSize: Dimensions.iconSize24,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: AppColors.mainColor, iconSize: Dimensions.iconSize24,
            ),
            IconAndTextWidget(
              icon: Icons.access_time,
              text: '32 mins',
              iconColor: AppColors.iconColor2, iconSize: Dimensions.iconSize24,
            ),
          ],
        )
      ],
    );
  }


}