import 'package:flutter/material.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class CustomTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool showAll;
  final Function? seeClicked;

  const CustomTitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.showAll = true,
    this.seeClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: title,
                  color: AppColors.color616161,
                  size: 12,
                  weight: FontWeight.w400,
                  align: TextAlign.start,
                ),
                CustomText(
                  title: subTitle,
                  color: Colors.black,
                  size: 18,
                  weight: FontWeight.w500,
                  align: TextAlign.start,
                ),
              ],
            ),
          ),
          Visibility(
            visible: showAll,
            child: InkWell(
              onTap: () {
                if (seeClicked != null) {
                  seeClicked!();
                }
              },
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
