import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularimage(image: Timages.user, isNetworkimage: false),
      title: Text('NajamUdDin',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: Tcolors.white)),
      subtitle: Text('najamuddin9823@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: Tcolors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.edit,
            color: Tcolors.white,
          )),
    );
  }
}
