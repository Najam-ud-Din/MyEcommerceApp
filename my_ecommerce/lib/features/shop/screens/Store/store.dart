import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/products.dart/cart_menu_icon.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/appbar.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/common/widgets/search_container.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFunctions.isDarkMode(context);
    return Scaffold(
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

                      Troundedcontainer(
                        padding: EdgeInsets.all(Sizes.sm),
                        showborder: true,
                        backgroundcolor: Colors.white,
                        child: Row(
                          children: [
                            ///-Icon
                            TCircularimage(
                              isNetworkimage: false,
                              image: Timages.clothicon,
                              backgroundColor: Colors.transparent,
                              overlaycolor:
                                  isdark ? Tcolors.white : Tcolors.black,
                            ),
                            SizedBox(
                              width: Sizes.spacebtwItems / 2,
                            ),

                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Nike',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
