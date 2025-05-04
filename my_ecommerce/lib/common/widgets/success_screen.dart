import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/styles/spacingstyles.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.sub_title,
      this.onPressed,
      required this.check,
      required this.buttonvalue});

  final bool check;
  final String image, title, sub_title, buttonvalue;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: check
          ? AppBar(
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                    onPressed: () {
                      //Get.offAll(LoginScreen());
                    },
                    icon: Icon(CupertinoIcons.clear))
              ],
            )
          : AppBar(
              automaticallyImplyLeading: false,
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
                image: AssetImage(image),
                width: THelperFunctions.screenWidth(),
              ),

              ///Title and subTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              check
                  ? Text("")
                  : Text(
                      'najamuddin9823@gmail.com',
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center,
                    ),

              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              Text(
                sub_title,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Sizes.spacebtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: Text(
                        buttonvalue,
                        style: TextStyle(color: Tcolors.white),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
