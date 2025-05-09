import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/search_container.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/t_home_bar.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tprimary_header_container.dart';
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
