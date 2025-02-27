import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire_demo/gen/assets.gen.dart';
import 'package:hyper_hire_demo/screens/home_screen/home_page.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class ItemCard extends StatelessWidget {
  final ItemModel item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 104,
              width: 104,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Image.asset(item.image),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: Visibility(
                visible: item.index<3,
                child: SvgPicture.asset(
                  item.index == 0
                      ? Assets.icons.crown1
                      : item.index == 1
                          ? Assets.icons.crown2
                          : Assets.icons.crown3,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomText(
                    title: item.name1,
                    size: 14,
                    weight: FontWeight.w700,
                  ),
                  Expanded(
                    child: CustomText(
                      title: ' ${item.name2}',
                      size: 14,
                      weight: FontWeight.w500,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      align: TextAlign.start,
                    ),
                  ),
                ],
              ),
              CustomText(
                title: ' \u2022  ${item.desc1}',
                size: 12,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                align: TextAlign.start,
              ),
               CustomText(
                title: ' \u2022  ${item.desc2}',
                size: 12,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                align: TextAlign.start,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                   CustomText(
                    title: item.rate,
                    size: 12,
                    weight: FontWeight.w700,
                    color: Colors.amber,
                  ),
                  CustomText(
                    title: '(${item.rateCount})',
                    size: 12,
                    weight: FontWeight.w700,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: AppColors.colorD7D7D7,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: CustomText(
                      title: item.tag1,
                      size: 11,
                      color: AppColors.color868686,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: AppColors.colorD7D7D7,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: CustomText(
                      title: item.tag2,
                      size: 11,
                      color: AppColors.color868686,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
