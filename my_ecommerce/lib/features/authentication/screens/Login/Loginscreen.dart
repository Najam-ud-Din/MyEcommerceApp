import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/styles/spacingstyles.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/footerwidget.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/loginheader.dart';
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
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.spacebtwsections),
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
                            onPressed: () {},
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
                            onPressed: () {},
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
                            onPressed: () {},
                            child: Text(
                              Ttexts.createAccount,
                              style: TextStyle(color: Tcolors.white),
                            ))),
                  ],
                )),
              ),

              ///Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? Tcolors.darkgrey : Tcolors.grey,
                      thickness: 0.5,
                      indent: 60.0,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    Ttexts.orsigninwith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? Tcolors.darkgrey : Tcolors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              //Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  footerwidget(images: Timages.google),
                  SizedBox(
                    width: Sizes.spacebtwItems,
                  ),
                  footerwidget(images: Timages.facebook),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
