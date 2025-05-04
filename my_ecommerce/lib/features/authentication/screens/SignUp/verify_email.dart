import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/common/widgets/success_screen.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Loginscreen.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Get.offAll(LoginScreen());
                },
                icon: Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: Sizes.defaultSpacing,
              right: Sizes.defaultSpacing,
              bottom: Sizes.defaultSpacing,
            ),
            child: Column(
              children: [
                ///Image
                Image(
                  image: AssetImage(Timages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth(),
                ),

                ///Title and subTitle
                Text(
                  Ttexts.confirmemail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Sizes.spacebtwItems,
                ),
                Text(
                  'najamuddin9823@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Sizes.spacebtwItems,
                ),
                Text(
                  Ttexts.confirmemailsubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Sizes.spacebtwsections,
                ),

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(SuccessScreen(
                            check: false,
                            image: Timages.staticSuccessIllustration,
                            title: Ttexts.youraccountcreatedTitle,
                            sub_title: Ttexts.youraccountcreatedSubTitle,
                            buttonvalue: Ttexts.Continue,
                            onPressed: () => Get.to(() => LoginScreen()),
                          ));
                        },
                        child: Text(
                          Ttexts.Continue,
                          style: TextStyle(color: Tcolors.white),
                        ))),

                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          Ttexts.resendemail,
                        ))),
              ],
            ),
          ),
        ));
  }
}
