import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/social_button.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Loginpagefooter extends StatelessWidget {
  const Loginpagefooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(images: Timages.google),
        SizedBox(
          width: Sizes.spacebtwItems,
        ),
        SocialButton(images: Timages.facebook),
      ],
    );
  }
}
