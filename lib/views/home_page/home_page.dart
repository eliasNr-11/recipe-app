import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/recipe_data.dart';
import 'package:recipe_app/views/detail_page/detail_page.dart';
import 'package:recipe_app/views/home_page/components/categories_btn.dart';
import 'package:recipe_app/views/home_page/components/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int groupVal = 0;

  final List categories = [
    {'icn': Icons.local_fire_department, 'name': 'Popular'},
    {'icn': Icons.breakfast_dining, 'name': 'Bread'},
    {'icn': Icons.coffee, 'name': 'Drink'},
    {'icn': Icons.rice_bowl, 'name': 'Chinese'},
    {'icn': Icons.icecream, 'name': 'Dessert'},
    {'icn': Icons.dinner_dining, 'name': 'Italian'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 5,
        shadowColor: Colors.black26,
        surfaceTintColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: kcPrimaryColor,
                  borderRadius: BorderRadius.circular(10.r),
                  // border: Border.all(width: 3),
                ),
                child: Center(
                  child: Text(
                    'T',
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size.zero,
                  primary: Colors.black,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(Icons.notifications_none, size: 28.sp),
                    Positioned(
                      child: Icon(
                        Icons.circle,
                        color: kcPrimaryColor,
                        size: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 20.h),
              child: Text(
                'Hello, Teresa!',
                style: TextStyle(color: Colors.grey[600], fontSize: 14.sp),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 20.w, bottom: 20.h),
                width: MediaQuery.of(context).size.width * 0.75,
                child: RichText(
                  text: TextSpan(
                      text: 'Make your own food, stay at ',
                      style: TextStyle(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'home',
                          style: TextStyle(color: kcPrimaryColor),
                        )
                      ]),
                ),),
            Container(
              margin: kpPaddingOneHoriz,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Padding(
                padding: kpPaddingThreeVert,
                child: Row(
                  children: [
                    Padding(
                      padding: kpPaddingOneHoriz,
                      child: Icon(Icons.search,
                          size: 28.sp, color: Colors.grey[600]),
                    ),
                    Expanded(
                        child: Text(
                      'Search any recipe',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600),
                    )),
                    Padding(
                      padding: kpPaddingThreeHoriz,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(5.r),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero,
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        child: Icon(Icons.more_vert, size: 28.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: kpPaddingOne,
                child: Row(
                    children: List.generate(
                  6,
                  (index) => CategoriesBtn(
                    icn: categories[index]['icn'],
                    name: categories[index]['name'],
                    value: index,
                    groupValue: groupVal,
                    whenPressed: () {
                      setState(() {
                        groupVal = index;
                      });
                    },
                  ),
                )),
              ),
            ),
            Padding(
              padding: kpPaddingOneHoriz,
              child: Text(
                '${categories[groupVal]['name']} Recipes',
                style:
                    TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: kpPaddingOne,
              child: StaggeredGridView.countBuilder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: kdRecipeData.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return RecipeCard(
                    img: kdRecipeData[index].imgUrl,
                    duration: '${kdRecipeData[index].duration} Min',
                    rating: kdRecipeData[index].rating,
                    name: kdRecipeData[index].name,
                    categorie: kdRecipeData[index].categorie,
                    index: index,
                    whenPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(index: index)));
                    },
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
