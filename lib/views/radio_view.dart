import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/widgets/top_header_logo.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../widgets/radio_item.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<String> radioList=[
      'Radio Ibrahim Al-Akdar',
      'Radio Al-Qaria Yassen',
      'Radio Ahmed Al-trabulsi',
      'Radio Addokali Mohammad Alalim',
      'Radio Ibrahim Al-Akdar',
      'Radio Al-Qaria Yassen',
      'Radio Ahmed Al-trabulsi',
      'Radio Addokali Mohammad Alalim',
    ];
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/home/radiobg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height * .02),
          const TopHeaderLogo(),
          ToggleSwitch(
            initialLabelIndex: 0,
            totalSwitches: 2,
            minWidth: width,
            fontSize: 16,
            activeFgColor: AppColors.kBlackColor,
            inactiveFgColor: AppColors.kWhiteColor,
            activeBgColor: const [
              AppColors.kPrimaryColor,
            ],
            inactiveBgColor: AppColors.kBlackColor.withOpacity(.7),
            labels: ['Radio', 'Reciters'],
            changeOnTap:true ,
            onToggle: (index) {
              print('switched to: $index');
                currentIndex = index!;
            },
          ),
          currentIndex == 0
              ? Expanded(child: ListView.separated(itemBuilder: (context,index)=>RadioItem(name: radioList[index],), separatorBuilder: (context,index)=>SizedBox(height: 16,), itemCount: 8))
              : const Text(
                  'Radio222222',
                  style: TextStyle(color: Colors.white),
                ),
        ],
      ),
    );
  }
}


