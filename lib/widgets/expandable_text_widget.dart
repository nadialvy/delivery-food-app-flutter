import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget{
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 3.63; //if total text is more than 200, we'll hide the rest of the text

  @override 
  void initState(){
    super.initState();
    //check length of text that passed

    //if length of text is > 200, then split the whole text into 2 section
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    }else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty? SmallText(paramText: firstHalf) : Column(
        children: [
          //first half
          SmallText(
            paramText: hiddenText? ("$firstHalf...") : (firstHalf + secondHalf),
            paramSize: Dimensions.font16,
            paramHeight: 1.3,
          ),
          SizedBox(height: Dimensions.height10,),
          //button
          InkWell(
            onTap: (){
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(
                  paramText: hiddenText? 'Show more' : 'Show less',
                  paramColor: AppColors.mainColor
                ),
                Icon(
                  hiddenText? Icons.arrow_drop_down : Icons.arrow_drop_up,
                  color: AppColors.mainColor
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}