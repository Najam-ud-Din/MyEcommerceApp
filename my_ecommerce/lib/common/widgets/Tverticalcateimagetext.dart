import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class Tverticalimagetext extends StatelessWidget {
  const Tverticalimagetext({
    super.key,
    required this.image,
    required this.text,
    this.textcolor = Tcolors.white,
    this.backgroundcolor,
    this.onTap,
  });

  final String image, text;
  final Color textcolor;
  final Color? backgroundcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: Sizes.spacebtwItems),
        child: Column(
          children: [
            //Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backgroundcolor ??
                    (THelperFunctions.isDarkMode(context)
                        ? Tcolors.black
                        : Tcolors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: THelperFunctions.isDarkMode(context)
                      ? Tcolors.light
                      : Tcolors.dark,
                ),
              ),
            ),
            SizedBox(height: Sizes.spacebtwItems / 2),
            //text
            SizedBox(
              width: 55,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textcolor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
