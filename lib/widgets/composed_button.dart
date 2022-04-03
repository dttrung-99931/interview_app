import 'package:flutter/material.dart';
import 'package:interview_app/constants/app_colors.dart';
import 'package:interview_app/constants/app_styles.dart';

/// Composed buttton with icon, title 
class ComposedButtonWidget extends StatelessWidget {
  final IconData? iconData;
  final Function() onPressed;
  final double iconSize;
  final Color color;
  final EdgeInsets padding;
  final String title;
  final bool expanded;
  final double iconAndTitleSpace;

  const ComposedButtonWidget({
    required this.iconData,
    required this.title,
    required this.onPressed,
    this.iconSize = 20,
    this.color = AppColors.primaryColorDark,
    this.padding = const EdgeInsets.all(4),
    this.expanded = false,
    this.iconAndTitleSpace = 8,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
          children: [
            if (iconData != null) Icon(iconData, size: iconSize),
            if (iconData != null) SizedBox(width: iconAndTitleSpace),
            Text(
              title,
              style: AppStyles.title.copyWith(
                color: AppColors.primaryColorDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
