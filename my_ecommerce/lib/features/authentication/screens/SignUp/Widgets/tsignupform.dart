import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/Widgets/customfieldforsignup.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/verify_email.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class Tsignupform extends StatelessWidget {
  const Tsignupform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Customtextfield(
                expand: false,
                labelText: Ttexts.firstname,
                prefixIcon: Iconsax.user,
              ),
            ),
            SizedBox(
              width: Sizes.spaceBtwInputField,
            ),
            Expanded(
              child: Customtextfield(
                expand: false,
                labelText: Ttexts.lastname,
                prefixIcon: Iconsax.user,
              ),
            ),
          ],
        ),
        SizedBox(
          height: Sizes.spaceBtwInputField,
        ),
        Customtextfield(
          expand: false,
          labelText: Ttexts.username,
          prefixIcon: Iconsax.user_edit,
        ),
        SizedBox(
          height: Sizes.spaceBtwInputField,
        ),
        Customtextfield(
          expand: false,
          labelText: Ttexts.email,
          prefixIcon: Iconsax.direct,
        ),
        SizedBox(
          height: Sizes.spaceBtwInputField,
        ),
        Customtextfield(
          expand: false,
          labelText: Ttexts.phoneno,
          prefixIcon: Iconsax.call,
        ),
        SizedBox(
          height: Sizes.spaceBtwInputField,
        ),
        Customtextfield(
          expand: false,
          labelText: Ttexts.password,
          prefixIcon: Iconsax.password_check,
          suffixIcon: Iconsax.eye_slash,
          obscuretext: true,
        ),
        SizedBox(
          height: Sizes.spacebtwItems,
        ),

        ///terms and condition checkbox
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                    activeColor: Tcolors.primaryColor,
                    value: true,
                    onChanged: (Value) {})),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "${Ttexts.inagreeto} ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: "${Ttexts.privacypolicy}",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: THelperFunctions.isDarkMode(context)
                            ? Tcolors.white
                            : Tcolors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: THelperFunctions.isDarkMode(context)
                            ? Tcolors.white
                            : Tcolors.primaryColor,
                      )),
              TextSpan(
                  text: " ${Ttexts.and} ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: "${Ttexts.termsofuse}",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: THelperFunctions.isDarkMode(context)
                            ? Tcolors.white
                            : Tcolors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: THelperFunctions.isDarkMode(context)
                            ? Tcolors.white
                            : Tcolors.primaryColor,
                      )),
            ])),
          ],
        ),
        SizedBox(
          height: Sizes.spacebtwsections,
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(VerifyEmailScreen());
                },
                child: Text(
                  Ttexts.createAccount,
                  style: TextStyle(color: Tcolors.white),
                ))),
      ],
    ));
  }
}
