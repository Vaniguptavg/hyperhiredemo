import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_hire_demo/gen/assets.gen.dart';
import 'package:hyper_hire_demo/screens/category_screen/category_screen.dart';
import 'package:hyper_hire_demo/screens/home_screen/widget/category_card.dart';
import 'package:hyper_hire_demo/screens/home_screen/widget/item_card.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_drop_down.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';
import 'package:hyper_hire_demo/widgets/custom_title.dart';

///
/// Created by Varnica Gupta on 27/02/25
///
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  List<String> banners = [Assets.images.banner1.path, Assets.images.banner2.path, Assets.images.banner3.path, Assets.images.banner4.path];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.all(2), // Outer padding to create a gradient border effect
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.color74FBDE,
                          AppColors.color3C41BF,
                        ], // Gradient colors
                      ),
                    ),
                    child: SearchBar(
                      backgroundColor: const WidgetStatePropertyAll(
                        AppColors.colorF8F8F8,
                      ),
                      hintText: '검색어를 입력하세요',
                      hintStyle: WidgetStatePropertyAll(
                        GoogleFonts.getFont(
                          'Noto Sans KR',
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      textStyle: WidgetStatePropertyAll(
                        GoogleFonts.getFont(
                          'Noto Sans KR',
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      trailing: const [
                        Icon(
                          Icons.search,
                          color: AppColors.color3C41BF,
                        ),
                      ],
                      elevation: const WidgetStatePropertyAll(0),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        aspectRatio: 1.8,
                        viewportFraction: 1,
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      items: List.generate(banners.length, (index) => buildBanner(banners[index])),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: banners.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: _current == entry.key ? 20.0 : 8.0,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                                color: _current == entry.key ? Colors.white : Colors.white60,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTitle(title: '제일 핫한 리뷰를 만나보세요', subTitle: '리뷰️ 랭킹⭐top 3'),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    return ItemCard(item: ItemModel.items[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20);
                  },
                  itemCount: ItemModel.items.length,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTitle(title: '골드 계급 사용자들이예요', subTitle: '베스트 리뷰어 🏆 Top10'),
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (builder) => CategoryScreen(
                                category: CategoryModel.categories[index],
                              ),
                            ),
                          );
                        },
                        child: CategoryCard(
                          categories: CategoryModel.categories[index],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 20);
                    },
                    itemCount: CategoryModel.categories.length,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  title: 'LOGO Inc.',
                  size: 14,
                  weight: FontWeight.w500,
                  color: AppColors.color868686,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          title: '회사 소개 ',
                          size: 13,
                          color: AppColors.color868686,
                        ),
                        VerticalDivider(
                          color: AppColors.color868686,
                          thickness: 0.5,
                        ),
                        CustomText(
                          title: '회사 소개 ',
                          size: 13,
                          color: AppColors.color868686,
                        ),
                        VerticalDivider(
                          color: AppColors.color868686,
                          thickness: 0.5,
                        ),
                        CustomText(
                          title: '회사 소개 ',
                          size: 13,
                          color: AppColors.color868686,
                        ),
                        VerticalDivider(
                          color: AppColors.color868686,
                          thickness: 0.5,
                        ),
                        CustomText(
                          title: '회사 소개 ',
                          size: 13,
                          color: AppColors.color868686,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.grey.shade400,
                          size: 16,
                        ),
                        const CustomText(
                          title: 'review@logo.com',
                          size: 13,
                          color: AppColors.color868686,
                        ),
                      ],
                    ),
                    CustomDropDown(
                      items: const ['KOR'],
                      onChanged: (val) {},
                      backgroundColor: Colors.grey.shade200,
                      radius: 20,
                      height: 20,
                    )
                  ],
                ),
                const Divider(
                  color: AppColors.color868686,
                  thickness: 0.5,
                  height: 30,
                ),
                const CustomText(
                  title: '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
                  size: 10,
                  color: AppColors.color868686,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBanner(image) {
    return Image.asset(
      image,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}

class CategoryModel {
  final String image;
  final String name;
  final int index;

  CategoryModel({required this.image, required this.name, required this.index});

  static List<CategoryModel> categories = [
    CategoryModel(image: Assets.images.cat1.path, name: 'Name01', index: 0),
    CategoryModel(image: Assets.images.cat2.path, name: 'Name02', index: 1),
    CategoryModel(image: Assets.images.cat3.path, name: 'Name03', index: 2),
    CategoryModel(image: Assets.images.cat4.path, name: 'Name04', index: 3),
    CategoryModel(image: Assets.images.cat5.path, name: 'Name05', index: 4),
    CategoryModel(image: Assets.images.cat6.path, name: 'Name06', index: 5),
    CategoryModel(image: Assets.images.cat7.path, name: 'Name07', index: 6),
    CategoryModel(image: Assets.images.cat8.path, name: 'Name08', index: 7),
    CategoryModel(image: Assets.images.cat9.path, name: 'Name09', index: 8),
    CategoryModel(image: Assets.images.cat10.path, name: 'Name10', index: 9),
  ];
}

class ItemModel {
  final String image;
  final String name1;
  final String name2;
  final String desc1;
  final String desc2;
  final String rate;
  final String rateCount;
  final String tag1;
  final String tag2;
  final int index;

  ItemModel({
    required this.image,
    required this.name1,
    required this.name2,
    required this.desc1,
    required this.desc2,
    required this.rate,
    required this.rateCount,
    required this.tag1,
    required this.tag2,
    required this.index,
  });

  static List<ItemModel> items = [
    ItemModel(
      image: Assets.images.product1.path,
      name1: 'LG전자',
      name2: '스탠바이미 27ART10AKPL (스탠',
      desc1: '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
      desc2: '스탠바이미는 사랑입니다!️',
      rate: '4.86',
      rateCount: '216',
      tag1: 'LG전자',
      tag2: '편리성',
      index: 0,
    ),
    ItemModel(
      image: Assets.images.product2.path,
      name1: 'LG전자',
      name2: '울트라HD 75UP8300KNA (스탠드)',
      desc1: '화면 잘 나오고... 리모컨 기능 좋습니다.',
      desc2: '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
      rate: '4.36',
      rateCount: '136',
      tag1: 'LG전자',
      tag2: '고화질',
      index: 1,
    ),
    ItemModel(
      image: Assets.images.product3.path,
      name1: '라익미',
      name2: '스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
      desc1: '반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다',
      desc2: '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
      rate: '3.96',
      rateCount: '98',
      tag1: '라익미',
      tag2: '가성비',
      index: 2,
    ),
  ];
}
