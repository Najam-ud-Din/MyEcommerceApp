import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.images,
  });

  final String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Tcolors.grey,
          ),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: () {},
          icon: Image(
              width: Sizes.mdIcon,
              height: Sizes.mdIcon,
              image: AssetImage(images))),
    );
  }
}
