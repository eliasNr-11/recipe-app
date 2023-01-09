import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/recipe_data.dart';
import 'package:recipe_app/views/detail_page/components/appbar_btn.dart';
import 'package:recipe_app/views/detail_page/components/ingredients_directions.dart';
import 'package:recipe_app/views/detail_page/components/yellow_details.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();

  final int index;
}

class _DetailPageState extends State<DetailPage> {
  ScrollController _scrollController = ScrollController();

  bool lastStatus = true;

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (300.h - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              expandedHeight: 450.h,
              collapsedHeight: 124.h,
              surfaceTintColor: Colors.white,
              shadowColor: Colors.black12,
              scrolledUnderElevation: 5,
              systemOverlayStyle: isShrink
                  ? SystemUiOverlayStyle.dark
                  : SystemUiOverlayStyle.light,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBarBtn(
                    whenPressed: () {
                      Navigator.of(context).pop();
                    },
                    bkgColor: kcPrimaryColor!,
                    icn: Icons.arrow_back,
                  ),
                  AppBarBtn(
                    whenPressed: () {},
                    bkgColor: Colors.white,
                    icn: Icons.bookmark_outline,
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.h),
                child: Padding(
                  padding: kpPaddingOne,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              kdRecipeData[widget.index].name,
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(kdRecipeData[widget.index].categorie,
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey[600])),
                          ],
                        ),
                      ),
                      SizedBox(width: 80.w),
                      Container(
                        decoration: BoxDecoration(
                          color: kcPrimaryColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 10.w),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star_rounded, size: 20.sp),
                              SizedBox(width: 5.w),
                              Text(
                                '${kdRecipeData[widget.index].rating}',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: 'card-img-${widget.index}',
                  child: Stack(
                    children: [
                      Container(
                        foregroundDecoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black26,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black26
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0, 0.50, 1, 1],
                          ),
                        ),
                        child: CachedNetworkImage(
                          width: MediaQuery.of(context).size.width,
                          height: 460.h,
                          fit: BoxFit.cover,
                          imageUrl: kdRecipeData[widget.index].imgUrl,
                          placeholder: (context, url) => Container(
                            color: Colors.grey[200],
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: Colors.grey[200],
                            child: const Icon(Icons.error),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: 132.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.r),
                              topRight: Radius.circular(40.r),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: kpPaddingTwoVert,
                                width: 40.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50.r),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: kpPaddingOneHoriz,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    YellowDetails(
                      icn: Icons.access_time_rounded,
                      title: '${kdRecipeData[widget.index].duration}',
                      subTitle: 'mins',
                    ),
                    SizedBox(width: 20.w),
                    YellowDetails(
                      icn: Icons.people_outline_sharp,
                      title: '${kdRecipeData[widget.index].servings}',
                      subTitle: 'Servings',
                    ),
                    SizedBox(width: 20.w),
                    YellowDetails(
                      icn: Icons.local_fire_department_outlined,
                      title: '${kdRecipeData[widget.index].cal}',
                      subTitle: 'cal',
                    ),
                    SizedBox(width: 20.w),
                    YellowDetails(
                      icn: Icons.layers,
                      title: '',
                      subTitle: kdRecipeData[widget.index].difficulty,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: kpPaddingOne,
                child: Text(
                  'Ingredients',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  children: [
                    for (var i in kdRecipeData[widget.index].ingredients)
                      IngredientsDetail(
                        amount: i.amount,
                        name: i.ingredientName,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: kpPaddingOne,
                child: Text(
                  'Directions',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w, right: 20.w, bottom: 20.h),
                child: Column(
                  children: List.generate(
                    kdRecipeData[widget.index].directions.length,
                    (ind) => DirectionsDetails(
                      direction: kdRecipeData[widget.index].directions[ind],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
