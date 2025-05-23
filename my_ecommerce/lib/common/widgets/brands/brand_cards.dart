import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/common/widgets/texts/TbrandtitlewithVerificatoinIcon.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/enums.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Tbrandcards extends StatelessWidget {
  const Tbrandcards({
    super.key,
    required this.isdark,
    required this.showborder,
    this.ontap,
  });

  final bool isdark;
  final bool showborder;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Troundedcontainer(
        padding: EdgeInsets.all(Sizes.sm),
        showborder: showborder,
        backgroundcolor: isdark ? Colors.transparent : Colors.white,
        child: Row(
          children: [
            ///-Icon
            Flexible(
              child: TCircularimage(
                isNetworkimage: false,
                image: Timages.clothicon,
                backgroundColor: Colors.transparent,
                overlaycolor: isdark ? Tcolors.white : Tcolors.black,
              ),
            ),

            //--Details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: Sizes.sm),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TbrandtitlewithverificationIcon(
                      title: "Nike",
                      brandtextSize: Textsizes.large,
                    ),
                    Text(
                      "356 prodcuts",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
