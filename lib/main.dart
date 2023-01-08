import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:recipe_app/constants.dart';

import 'views/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                useMaterial3: true, primaryColor: kcPrimaryColor, scaffoldBackgroundColor: Colors.white),
            home: const MainApp(),
          );
        });
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  var pages = [
    const HomePage(),
    const Center(child: Text('Saved')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.r,
              color: Colors.black12,
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GNav(
                  gap: 8,
                  activeColor: Colors.black,
                  iconSize: 28.sp,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: kcPrimaryColor!,
                  color: Colors.grey[400],
                  tabs: const [
                    GButton(
                      icon: Icons.zoom_in_map_outlined,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.bookmark_outline,
                      text: 'Saved',
                    ),
                  ],
                  selectedIndex: _currentIndex,
                  onTabChange: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                Positioned(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      primary: Colors.grey[400]
                    ),
                    child: Icon(Icons.add_circle_rounded, size: 42.sp),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}