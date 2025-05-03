import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/styles/spacingstyles.dart';
import 'package:my_ecommerce/features/authentication/screens/Login/Widgets/textfromfield.dart';
import 'package:my_ecommerce/features/authentication/screens/SignUp/Widgets/customfieldforsignup.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

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
              Form(
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
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
