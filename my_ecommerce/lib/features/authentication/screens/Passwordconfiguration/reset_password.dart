import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/success_screen.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessScreen(
      image: Timages.deliveredEmailIllustration,
      check: true,
      title: Ttexts.reset_password_title,
      sub_title: Ttexts.reset_password_sub_title,
      buttonvalue: Ttexts.done,
    );
  }
}
