import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/formDivider.dart';
import 'package:my_ecommerce/common/widgets/social_button.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/loginpagefooter.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/Widgets/customfieldforsignup.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/Widgets/tsignupform.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpacing),
          child: Column(
            children: [
              ///Text heading
              Text(
                Ttexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: Sizes.spacebtwsections,
              ),

              ///form
              Tsignupform(),
              SizedBox(
                height: Sizes.spacebtwsections,
              ),

              ///Divider
              Formdivider(
                  dividertxt: Ttexts.orSignUpwith,
                  dark: THelperFunctions.isDarkMode(context)),
              SizedBox(
                height: Sizes.spacebtwsections,
              ),
              Loginpagefooter(),
            ],
          ),
        ),
      ),
    );
  }
}
