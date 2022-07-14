import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget{
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned( //img
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite, //take available width
              height: Dimensions.popFoodImg250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "image/food03.jpg"
                  ),
                )
              ),
            )
          ),
          Positioned( //icon widget
            top: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined,)
              ],
            )
          ),
          Positioned( //about
            right: 0,
            left: 0,
            bottom: 0,
            top: Dimensions.popFoodImg250 - Dimensions.height20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20)
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: 'Chicken Noodle Soup'),
                  SizedBox(height: Dimensions.height30),
                  
                  //about
                  BigText(paramText: 'About',),
                  
                  SizedBox(height: Dimensions.height10),
                  // expandable text widget   
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec adipiscing tristique risus nec feugiat in fermentum. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Malesuada fames ac turpis egestas integer. In ante metus dictum at tempor commodo ullamcorper a. Congue quisque egestas diam in. Ultricies mi quis hendrerit dolor magna eget est lorem ipsum. Sit amet nisl purus in mollis nunc sed. Feugiat pretium nibh ipsum consequat. Integer vitae justo eget magna fermentum iaculis eu. Massa sed elementum tempus egestas sed sed risus. Ipsum nunc aliquet bibendum enim facilisis. Turpis massa sed elementum tempus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Sed faucibus turpis in eu mi. Risus at ultrices mi tempus imperdiet nulla malesuada. Vulputate sapien nec sagittis aliquam. Auctor neque vitae tempus quam pellentesque nec nam. Convallis posuere morbi leo urna molestie at elementum eu facilisis. Vel turpis nunc eget lorem. Pellentesque habitant morbi tristique senectus et. Amet massa vitae tortor condimentum lacinia quis. Duis at tellus at urna condimentum. Enim tortor at auctor urna nunc id cursus metus aliquam. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget.'
                      )
                    )
                  )
                ],
              )
            )
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius30),
            topRight: Radius.circular(Dimensions.radius30)
          ),
          color: Color.fromARGB(255, 219, 218, 217)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10),
                  BigText(paramText: '0', paramSize: Dimensions.font16,),
                  SizedBox(width: Dimensions.width10),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius20)
              ),
              child: BigText(
                paramText: '\$10 | Add to cart',
                paramColor: Colors.white,
                paramSize: Dimensions.font16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}