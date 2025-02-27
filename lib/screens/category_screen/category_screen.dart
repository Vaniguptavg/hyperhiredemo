import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_hire_demo/gen/assets.gen.dart';
import 'package:hyper_hire_demo/screens/home_screen/home_page.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_drop_down.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class CategoryScreen extends StatelessWidget {
  final CategoryModel category;

  const CategoryScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Column(
          children: [
            CustomText(
              title: '랭킹 1위',
              size: 10,
              color: AppColors.color868686,
            ),
            CustomText(
              title: '베스트 리뷰어',
              size: 16,
              color: Colors.black,
              weight: FontWeight.w500,
            ),
          ],
        ),
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(category.image),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    title: category.name,
                    size: 20,
                    weight: FontWeight.w500,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.crown1,
                        width: 20,
                      ),
                      const CustomText(
                        title: ' 골드',
                        color: Colors.amber,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    decoration: BoxDecoration(color: AppColors.colorF0F0F0, borderRadius: BorderRadius.circular(6.0)),
                    child: const CustomText(
                      title: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
                      color: AppColors.color868686,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CustomText(
                              title: '작성한 리뷰',
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            CustomText(
                              title: '총 35개',
                              size: 12,
                              color: AppColors.color616161,
                            ),
                          ],
                        ),
                        CustomDropDown(
                          items: const ['최신순'],
                          onChanged: (val) {},
                          backgroundColor: Colors.white,
                          radius: 20,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: AppColors.colorF0F0F0,
                    thickness: 1.5,
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 104,
                          width: 104,
                          decoration: BoxDecoration(border: Border.all(color: AppColors.color616161), borderRadius: BorderRadius.circular(5.0)),
                          child: Image.asset(Assets.images.product2.path),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.getFont(
                                      'Noto Sans KR',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'AMD 라이젠 5 ',
                                        style: TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      TextSpan(
                                        text: '5600X 버미어\n정품 멀티팩',
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      rating: 4.07,
                                      itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 25.0,
                                      unratedColor: AppColors.colorF0F0F0,
                                    ),
                                    const CustomText(
                                      title: '4.07',
                                      size: 18,
                                      weight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: AppColors.colorF0F0F0,
                    thickness: 1.5,
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(category.image),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      title: category.name,
                                      weight: FontWeight.w500,
                                    ),
                                    Row(
                                      children: [
                                        RatingBarIndicator(
                                          rating: 3.75,
                                          itemBuilder: (context, index) => const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemCount: 5,
                                          itemSize: 14.0,
                                          unratedColor: AppColors.colorF0F0F0,
                                        ),
                                        const CustomText(
                                          title: '2022.12.09',
                                          size: 10,
                                          color: AppColors.color868686,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.bookmark_border_rounded,
                              color: AppColors.color868686,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 110,
                                  child: CustomText(
                                    title: '“가격 저렴해요”',
                                    size: 10,
                                    weight: FontWeight.w700,
                                    color: AppColors.colorA0A0A0,
                                  )),
                              SizedBox(
                                  width: 110,
                                  child: CustomText(
                                    title: '“CPU온도 고온”',
                                    size: 10,
                                    weight: FontWeight.w700,
                                    color: AppColors.colorA0A0A0,
                                  )),
                              SizedBox(
                                  width: 110,
                                  child: CustomText(
                                    title: '“서멀작업 가능해요”',
                                    size: 10,
                                    weight: FontWeight.w700,
                                    color: AppColors.colorA0A0A0,
                                  )),
                              SizedBox(
                                  width: 110,
                                  child: CustomText(
                                    title: '“게임 잘 돌아가요”',
                                    size: 10,
                                    weight: FontWeight.w700,
                                    color: AppColors.colorA0A0A0,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                Assets.icons.charge,
                                colorFilter: const ColorFilter.mode(Color(0xff3E3DC5), BlendMode.srcIn),
                              ),
                            ),
                            const Expanded(
                              child: CustomText(
                                title: '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                                weight: FontWeight.w300,
                                align: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                Assets.icons.charge,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CustomText(
                                    title: '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                                    weight: FontWeight.w300,
                                    align: TextAlign.start,
                                  ),
                                  const SizedBox(height: 20),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          Assets.images.banner1.path,
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(width: 10),
                                        Image.asset(
                                          Assets.images.banner2.path,
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(width: 10),
                                        Image.asset(
                                          Assets.images.banner3.path,
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(width: 10),
                                        Image.asset(
                                          Assets.images.banner4.path,
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const Divider(
                    color: AppColors.colorF0F0F0,
                    thickness: 1.5,
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.icons.sms),
                        const CustomText(
                          title: ' 댓글 달기..',
                          color: AppColors.color616161,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
