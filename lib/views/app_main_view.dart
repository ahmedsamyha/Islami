import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/views/dated_view.dart';
import 'package:islami/views/hadith_view.dart';
import 'package:islami/views/quran_view.dart';
import 'package:islami/views/radio_view.dart';
import 'package:islami/views/sibha_view.dart';

class AppMainView extends StatefulWidget {
  const AppMainView({super.key});

  @override
  State<AppMainView> createState() => _AppMainViewState();
}

class _AppMainViewState extends State<AppMainView> {
  int currentIndex = 0;
  Widget _getNavItem(String imageNAme, int index) {
    return currentIndex == index
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.kBlackColor.withOpacity(.6),
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(AssetImage('assets/images/home/$imageNAme')))
        : ImageIcon(AssetImage('assets/images/home/$imageNAme'));
  }

  List<Widget> screens = [
    const QuranView(),
    const HadithView(),
    const SibhaView(),
    const RadioView(),
    const DatedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.kPrimaryColor,
        selectedItemColor: AppColors.kWhiteColor,
        unselectedItemColor: AppColors.kBlackColor,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: _getNavItem('quran0.png', 0), label: 'Quran'),
          BottomNavigationBarItem(
              icon: _getNavItem('book0.png', 1), label: 'Hadith'),
          BottomNavigationBarItem(
              icon: _getNavItem('sebha0.png', 2), label: 'Tasbih'),
          BottomNavigationBarItem(
              icon: _getNavItem('radio0.png', 3), label: 'Radio'),
          BottomNavigationBarItem(
              icon: _getNavItem('last0.png', 4), label: 'Dates'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
