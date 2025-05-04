import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/textfromfield.dart';
import 'package:my_ecommerce/features/authentication/screens/Passwordconfiguration/forget_password.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/signupscreen.dart';
import 'package:my_ecommerce/navigation_menu.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class loginform extends StatelessWidget {
  const loginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.spacebtwsections),
      child: Form(
          child: Column(
        children: [
          ///Email
          CustomTextFormField(
            icon: Iconsax.sms,
            labelText: Ttexts.email,
          ),
          SizedBox(
            height: Sizes.spaceBtwInputField,
          ),
          CustomTextFormField(
            labelText: Ttexts.password,
            icon: Iconsax.password_check,
            suffixIcon: Iconsax.eye_slash,
          ),
          SizedBox(
            height: Sizes.spaceBtwInputField / 2,
          ),
          //remember me and forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      activeColor: Tcolors.primaryColor,
                      value: true,
                      onChanged: (value) {}),
                  Text(
                    Ttexts.rememberme,
                  ),
                ],
              ),

              //forgetpassword
              TextButton(
                  onPressed: () {
                    Get.to(ForgetPassword());
                  },
                  child: Text(Ttexts.forgetpassword))
            ],
          ),

          SizedBox(
            height: Sizes.spacebtwItems,
          ),

          ///signinbutton
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(NavigationMenu());
                  },
                  child: Text(
                    Ttexts.signin,
                    style: TextStyle(color: Tcolors.white),
                  ))),
          SizedBox(
            height: Sizes.spacebtwItems,
          ),

          ///createaccountbutton
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? Tcolors.dark
                        : Tcolors.white,
                  ),
                  onPressed: () {
                    Get.to(const Signupscreen());
                  },
                  child: Text(
                    Ttexts.createAccount,
                    style: TextStyle(
                      color: THelperFunctions.isDarkMode(context)
                          ? Tcolors.white
                          : Tcolors.black,
                    ),
                  ))),
        ],
      )),
    );
  }
}
