import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/common/widgets/images/Troundimage.dart';
import 'package:my_ecommerce/features/shop/controllers/homecontrollers.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcircularcontainer.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Tpromoslider extends StatelessWidget {
  const Tpromoslider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.put(Homecontrollers());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((e) => Troundedimage(imageurl: e)).toList(),
            options: CarouselOptions(
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              onPageChanged: (index, _) =>
                  homecontroller.updatepageindicator(index),
            )),
        const SizedBox(
          height: Sizes.spacebtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  Center(
                    child: Tcircularcontainer(
                      width: 20,
                      height: 4,
                      backgroundColor: homecontroller.carousalcurrentindex == i
                          ? Tcolors.primaryColor
                          : Tcolors.grey,
                      margin: EdgeInsets.only(right: 10),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
