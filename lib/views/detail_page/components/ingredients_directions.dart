import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';

class IngredientsDetail extends StatelessWidget {
  const IngredientsDetail({
    Key? key, required this.main, required this.sub,
  }) : super(key: key);

  final String main;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, size: 12.sp, color: kcPrimaryColor,),
        SizedBox(width: 15.w),
        Text(main, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),),
        SizedBox(width: 5.w),
        Text(sub, style: TextStyle(fontSize: 16.sp),),
      ],
    );
  }
}

class DirectionsDetails extends StatelessWidget {
  const DirectionsDetails({
    Key? key, required this.direction,
  }) : super(key: key);

  final String direction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Icon(
            Icons.circle,
            size: 12.sp,
            color: kcPrimaryColor,
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Text(
            direction,
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}