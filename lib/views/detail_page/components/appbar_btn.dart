import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarBtn extends StatelessWidget {
  const AppBarBtn({
    Key? key,
    required this.whenPressed,
    required this.bkgColor,
    required this.icn,
  }) : super(key: key);

  final VoidCallback whenPressed;
  final Color bkgColor;
  final IconData icn;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: whenPressed,
      style: TextButton.styleFrom(
        primary: Colors.black,
        backgroundColor: bkgColor,
        padding: EdgeInsets.all(8.r),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Icon(icn),
    );
  }
}