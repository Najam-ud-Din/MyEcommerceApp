import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/styles/spacingstyles.dart';
import 'package:my_ecommerce/common/widgets/social_button.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/loginform.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/loginheader.dart';
import 'package:my_ecommerce/common/widgets/formDivider.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/loginpagefooter.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/textfromfield.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithappbarheight,
          child: Column(
            children: [
              ///logo, title and sub-title
              loginheader(dark: dark),
              SizedBox(
                height: Sizes.sm,
              ),
              //Form
              loginform(),

              ///Divider
              Formdivider(dark: dark),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              //Footer
              Loginpagefooter(),
            ],
          ),
        ),
      ),
    );
  }
}
