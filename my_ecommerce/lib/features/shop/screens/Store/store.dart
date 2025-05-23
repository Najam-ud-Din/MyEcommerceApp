import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/products.dart/cart_menu_icon.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce/common/widgets/search_container.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/common/widgets/texts/TbrandtitlewithVerificatoinIcon.dart';
import 'package:my_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:my_ecommerce/features/shop/screens/Store/widgets/brand_cards.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/enums.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onpressed: () {},
              iconColor: Tcolors.black, 
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerboxscrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    expandedHeight: 440,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? Tcolors.black
                        : Tcolors.white,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.all(Sizes.defaultSpacing),
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          ///--Search Bar
                          SizedBox(
                            height: Sizes.spacebtwItems,
                          ),
                          TSearchContainer(
                            text: "Search in store",
                            showborder: true,
                            showbackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          SizedBox(
                            height: Sizes.spacebtwsections,
                          ),

                          TSectionHeading(
                            title: 'Featured Brands',
                            showActionbutton: true,
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: Sizes.spacebtwItems / 1.5,
                          ),

                          Gridlayout(
                              mainAxisExtent: 80,
                              itemcount: 4,
                              itemBuilder: (_, index) {
                                return Tbrandcards(
                                  isdark: isdark,
                                  showborder: true,
                                );
                              }),
                        ],
                      ),
                    ),

                    /// Tabs -- Tutorials
                    bottom: TtabBar(tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Clothes'),
                      ),
                      Tab(
                        child: Text('Cosmetics'),
                      ),
                    ])),
              ];
            },
            body: TabBarView(children: [
              Padding(
                padding: EdgeInsets.all(Sizes.defaultSpacing),
                child: Column(
                  children: [
                    /// --Brands
                    Troundedcontainer(
                      padding: EdgeInsets.all(Sizes.md),
                      showborder: true,
                      bordercolor: Tcolors.darkgrey,
                      backgroundcolor: Colors.transparent,
                      margin: EdgeInsets.only(bottom: Sizes.spacebtwItems),
                      child: Column(
                        children: [
                          /// Brand with products count
                          Tbrandcards(
                            isdark: isdark,
                            showborder: false,
                          ),

                          ///  Brand Top 3 Products image
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Troundedcontainer(
                                  margin: EdgeInsets.only(right: Sizes.sm),
                                  padding: EdgeInsets.all(Sizes.sm),
                                  height: 100,
                                  backgroundcolor:
                                      isdark ? Tcolors.darkgrey : Tcolors.light,
                                  child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(Timages.Productimage1)),
                                ),
                              ),
                              Expanded(
                                child: Troundedcontainer(
                                  margin: EdgeInsets.only(right: Sizes.sm),
                                  padding: EdgeInsets.all(Sizes.sm),
                                  height: 100,
                                  backgroundcolor:
                                      isdark ? Tcolors.darkgrey : Tcolors.light,
                                  child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(Timages.Productimage2)),
                                ),
                              ),
                              Expanded(
                                child: Troundedcontainer(
                                  margin: EdgeInsets.only(right: Sizes.sm),
                                  padding: EdgeInsets.all(Sizes.sm),
                                  height: 100,
                                  backgroundcolor:
                                      isdark ? Tcolors.darkgrey : Tcolors.light,
                                  child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(Timages.Productimage3)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    /// --Products
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
