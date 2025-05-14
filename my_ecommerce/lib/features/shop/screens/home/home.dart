import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/Troundimage.dart';
import 'package:my_ecommerce/common/widgets/Tverticalcateimagetext.dart';
import 'package:my_ecommerce/common/widgets/products/product_cards/prodcut_card_vertical.dart';
import 'package:my_ecommerce/common/widgets/search_container.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/t_home_bar.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/t_homecategories.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcircularcontainer.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tprimary_header_container.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tpromoslider.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header container
            TprimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeBar(),
                  SizedBox(
                    height: Sizes.spacebtwsections,
                  ),

                  //search bar
                  TSearchContainer(
                    text: "Search in store",
                  ),
                  SizedBox(
                    height: Sizes.spacebtwsections,
                  ),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: Sizes.defaultSpacing),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionbutton: false,
                          textColor: Tcolors.white,
                        ),
                        SizedBox(
                          height: Sizes.spacebtwItems,
                        ),

                        //Scrollable categories
                        //using listview.builder here
                        THomecategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //Body part of the home screen
            Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpacing),
                child: Column(
                  children: [
                    Tpromoslider(
                      banners: [
                        Timages.Banner1,
                        Timages.Banner2,
                        Timages.Banner3,
                        Timages.Banner4,
                        Timages.Banner5,
                        Timages.Banner6,
                        Timages.Banner7
                      ],
                    ),

                    //--popular products --tutorial
                    TproductCardVertical(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
