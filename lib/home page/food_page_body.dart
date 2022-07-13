import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget{
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(
    viewportFraction: 0.85
  );
  var _currPageVal = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override //1. initialise necessary things that your page should need
  void initState(){ //method in stateful class
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageVal = pageController.page!; //get curr page val
        // print(_currPageVal.toString());
      });
    });
  }

  @override //2. when you leave the page you dispose them, coz u dont need it anymore
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5, //position will connected to item count, position is an index, so it will to be 0 - 4
        itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int position) {
    //scalling pict
    Matrix4 matrix = Matrix4.identity();
    //current slide
    if(position == _currPageVal.floor()){
      var currScale = 1-(_currPageVal - position) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    //next slide
    else if(position == _currPageVal.floor() + 1){
      var currScale = _scaleFactor + (_currPageVal - position + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    // previous slide
    else if(position == _currPageVal.floor() - 1){
      var currScale = 1-(_currPageVal - position) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    //the pict after current pict
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: position.isEven? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "image/food01.jpg",
                )
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              height: 120,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 190, 190, 190),
                    blurRadius: 3.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(paramText: 'Chinese Noodle Soup'),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: 'Normal',
                        iconColor: AppColors.iconColor1
                      ),
                      IconAndTextWidget(
                        icon: Icons.location_on,
                        text: '1.7km',
                        iconColor: AppColors.mainColor
                      ),
                      IconAndTextWidget(
                        icon: Icons.access_time,
                        text: '32 mins',
                        iconColor: AppColors.iconColor2
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
