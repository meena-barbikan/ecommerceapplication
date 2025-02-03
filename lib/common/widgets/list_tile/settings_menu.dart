import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:flutter/material.dart';

class SettingsMenu extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;
  final Widget? trailing;
  final void Function()? ontap;

  const SettingsMenu({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.trailing,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Tcolors.primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
