import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/features/authentication/screens/Passwordconfiguration/reset_password.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/Widgets/customfieldforsignup.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: Sizes.defaultSpacing,
          right: Sizes.defaultSpacing,
          bottom: Sizes.defaultSpacing,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(
              Ttexts.forgetpasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: Sizes.spacebtwItems,
            ),
            Text(
              Ttexts.forgetpasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: Sizes.spacebtwsections,
            ),

            ///TextField
            Customtextfield(
                labelText: Ttexts.email,
                prefixIcon: Iconsax.direct_right,
                expand: false),
            const SizedBox(
              height: Sizes.spacebtwsections,
            ),

            ///SubmitButton
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => ResetPassword());
                    },
                    child: Text(
                      Ttexts.submit,
                      style: TextStyle(color: Tcolors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
