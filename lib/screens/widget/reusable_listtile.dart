import 'package:flutter/material.dart';

import '../../colors.dart';

class ReusableListTile extends StatelessWidget {
  final Widget ? leading;
  final String ? title;
  final VoidCallback ? onTap;
  final bool selected;
  const ReusableListTile({
    super.key, this.leading, this.title, this.onTap,  this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      selectedTileColor: blueColor.withOpacity(0.3),
      selectedColor: blueColor,
      focusColor: blueColor,selected: selected,textColor: blackColor,iconColor: blackColor,
      leading: leading,
      title: Text(title!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,),),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}