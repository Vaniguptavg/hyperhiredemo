import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire_demo/gen/assets.gen.dart';
import 'package:hyper_hire_demo/screens/home_screen/home_page.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class CategoryCard extends StatelessWidget {
  final CategoryModel categories;

  const CategoryCard({required this.categories, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Visibility(visible: categories.index == 0, child: SvgPicture.asset(Assets.icons.crown1)),
            Container(
              height: 80,
              width: 63,
              decoration: BoxDecoration(
                border: categories.index == 0 ? Border.all(color: Colors.amber, width: 2) : null,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  categories.image,
                ),
              ),
            ),
          ],
        ),
        CustomText(
          title: categories.name,
          color: AppColors.color868686,
          size: 10,
        ),
      ],
    );
  }
}
