import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class ProductListCommentIcons extends StatelessWidget {
  final IconData iconData;
  final int count;

  const ProductListCommentIcons(this.iconData, this.count, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: fontMedium),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
