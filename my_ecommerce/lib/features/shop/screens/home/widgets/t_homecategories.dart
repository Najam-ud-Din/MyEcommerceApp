import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/common/widgets/Tverticalcateimagetext.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';

class THomecategories extends StatelessWidget {
  const THomecategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return Tverticalimagetext(
              image: Timages.shoeicon,
              text: 'Shoes',
              onTap: () {},
              //backgroundcolor: Tcolors.black,
            );
          }),
    );
  }
}
