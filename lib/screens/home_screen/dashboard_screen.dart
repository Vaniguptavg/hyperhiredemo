import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyper_hire_demo/gen/assets.gen.dart';
import 'package:hyper_hire_demo/screens/home_screen/home_page.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  Widget tabBody = Container();

  @override
  void initState() {
    tabBody = const HomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomText(
          title: 'LOGO',
          color: AppColors.color5D5FEF,
          size: 24,
          weight: FontWeight.w500,
          font: 'Roboto',
        ),
        elevation: 0,
        centerTitle: false,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 1,
          ),
        ),
      ),
      body: Container(color: Colors.grey.shade200,child: tabBody),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              navButton(Assets.icons.nav1, '홈', 0),
              navButton(Assets.icons.nav2, '카테고리', 1),
              navButton(Assets.icons.nav3, '커뮤니티', 2),
              navButton(Assets.icons.nav4, '마이페이지', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget navButton(String icon, String name, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
        updateBody(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: 28,
            height: 28,
            colorFilter: ColorFilter.mode(
              currentIndex == index ? AppColors.color767D88 : AppColors.colorD7D7D7,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 5),
          CustomText(
            title: name,
            size: 10,
            color: currentIndex == index ? AppColors.color767D88 : AppColors.colorD7D7D7,
          ),
        ],
      ),
    );
  }

  void updateBody(int index) {
    setState(() {
      if(index == 0){
        tabBody = const HomePage();
      }else{
        tabBody = Container();
      }
    });
  }
}
