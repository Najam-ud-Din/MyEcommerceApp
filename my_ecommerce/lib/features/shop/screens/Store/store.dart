import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/products.dart/cart_menu_icon.dart';
import 'package:my_ecommerce/common/widgets/appbar.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store'),
        actions: [
          TCartCounterIcon(
            onpressed: () {},
            iconColor: Tcolors.black,
          )
        ],
      ),
    );
  }
}
