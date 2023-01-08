import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key, required this.img, required this.duration, required this.rating, required this.name, required this.categorie,
  }) : super(key: key);

  final String img;
  final String duration;
  final double rating;
  final String name;
  final String categorie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: Image.network(
                  img,),
            ),
            Positioned(
              child: Container(
                margin: kpPaddingOne,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 3.h, horizontal: 6.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.timelapse,
                        size: 18.sp,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        duration,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: kpPaddingOne,
                decoration: BoxDecoration(
                  color: kcPrimaryColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 2.h, horizontal: 6.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_rounded, size: 20.sp),
                      SizedBox(width: 5.w),
                      Text(
                        '$rating',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          name,
          style:
              TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        Text(
          categorie,
          style: TextStyle(fontSize: 16.sp, color: Colors.grey[600]),
        )
      ],
    );
  }
}