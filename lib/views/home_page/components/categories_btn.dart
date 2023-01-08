import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';

class CategoriesBtn extends StatelessWidget {
  const CategoriesBtn({
    Key? key, required this.icn, required this.name, required this.value, required this.groupValue, required this.whenPressed,
  }) : super(key: key);

  final IconData icn;
  final String name;
  final int value;
  final int groupValue;
  final VoidCallback whenPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w),
      child: GestureDetector(
        onTap: whenPressed,
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              padding: EdgeInsets.symmetric(
                  vertical: 20.h, horizontal: 15.w),
              decoration: BoxDecoration(
                  color: groupValue == value ? kcPrimaryColor : Colors.grey[200],
                  borderRadius: BorderRadius.circular(30.r)),
              child: Icon(icn,
                  size: 32.sp),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: groupValue == value ? Colors.black : Colors.grey[400],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
