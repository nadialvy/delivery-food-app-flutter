import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class RecomendedFoodDetail extends StatelessWidget{
  const RecomendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear,),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.height10), topRight: Radius.circular(Dimensions.height10) )
                ),
                child: Center(
                  child: BigText(paramText: 'Chicken Noodle Soup',)
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar( //for background image
              background: Image.asset(
                'image/food04.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              color: Colors.white,
              child: Column(
                children: [
                  ExpandableTextWidget(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec adipiscing tristique risus nec feugiat in fermentum. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Malesuada fames ac turpis egestas integer. In ante metus dictum at tempor commodo ullamcorper a. Congue quisque egestas diam in. Ultricies mi quis hendrerit dolor magna eget est lorem ipsum. Sit amet nisl purus in mollis nunc sed. Feugiat pretium nibh ipsum consequat. Integer vitae justo eget magna fermentum iaculis eu. Massa sed elementum tempus egestas sed sed risus. Ipsum nunc aliquet bibendum enim facilisis. Turpis massa sed elementum tempus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Sed faucibus turpis in eu mi. Risus at ultrices mi tempus imperdiet nulla malesuada. Vulputate sapien nec sagittis aliquam. Auctor neque vitae tempus quam pellentesque nec nam. Convallis posuere morbi leo urna molestie at elementum eu facilisis. Vel turpis nunc eget lorem. Pellentesque habitant morbi tristique senectus et. Amet massa vitae tortor condimentum lacinia quis. Duis at tellus at urna condimentum. Enim tortor at auctor urna nunc id cursus metus aliquam. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec adipiscing tristique risus nec feugiat in fermentum. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Malesuada fames ac turpis egestas integer. In ante metus dictum at tempor commodo ullamcorper a. Congue quisque egestas diam in. Ultricies mi quis hendrerit dolor magna eget est lorem ipsum. Sit amet nisl purus in mollis nunc sed. Feugiat pretium nibh ipsum consequat. Integer vitae justo eget magna fermentum iaculis eu. Massa sed elementum tempus egestas sed sed risus. Ipsum nunc aliquet bibendum enim facilisis. Turpis massa sed elementum tempus. Ac turpis egestas sed tempus urna et pharetra pharetra massa. Sed faucibus turpis in eu mi. Risus at ultrices mi tempus imperdiet nulla malesuada. Vulputate sapien nec sagittis aliquam. Auctor neque vitae tempus quam pellentesque nec nam. Convallis posuere morbi leo urna molestie at elementum eu facilisis. Vel turpis nunc eget lorem. Pellentesque habitant morbi tristique senectus et. Amet massa vitae tortor condimentum lacinia quis. Duis at tellus at urna condimentum. Enim tortor at auctor urna nunc id cursus metus aliquam. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam eget.')
                ],
              )
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column (
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width30, right: Dimensions.width30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppIcon(icon: Icons.remove, backgroudColor: AppColors.mainColor, iconColor: Colors.white, iconSize: Dimensions.iconSize24,),
                BigText(paramText: '\$12.88  X  0', paramSize: Dimensions.font22,),
                AppIcon(icon: Icons.add, backgroudColor: AppColors.mainColor, iconColor: Colors.white, iconSize: Dimensions.iconSize24,)
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width30, right: Dimensions.width30),
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
                  padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width10, right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white
                  ),
                  child: AppIcon(icon: Icons.favorite, iconColor: AppColors.mainColor, iconSize: Dimensions.iconSize36, backgroudColor: Colors.white,),
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
        ],
      ),
    );
  }


}