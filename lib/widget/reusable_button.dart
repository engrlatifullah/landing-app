import 'package:flutter/material.dart';

import '../colors.dart';

class ReusableButton extends StatelessWidget {
  final String  title;
  final VoidCallback ? onTap;
  final bool filled;
  const ReusableButton({Key? key, required this.title, this.onTap,  this.filled = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: filled ? blueColor : whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(

              color:blueColor
          )
        ),
        child: Text(title,style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.w500,
            color: filled ? whiteColor : blueColor
        ),),
      ),
    );
  }
}
