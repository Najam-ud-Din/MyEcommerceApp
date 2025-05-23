import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';

class TSettingmenuTile extends StatelessWidget {
  const TSettingmenuTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.trailing,
      this.ontap});

  final String title, subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Tcolors.primaryColor,
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium!),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodyMedium!),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
