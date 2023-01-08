import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';

class YellowDetails extends StatelessWidget {
  const YellowDetails({
    Key? key, required this.icn, required this.title, required this.subTitle,
  }) : super(key: key);

  final IconData icn;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kpPaddingThreeVert,
      decoration: BoxDecoration(
        color: kcPrimaryColor,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Padding(
        padding: kpPaddingThreeHoriz,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(icn, size: 32.sp),
            ),
            SizedBox(height: 5.h),
            Text(title, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,)),
            Text(subTitle, style: TextStyle(fontSize: 12.sp)),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}