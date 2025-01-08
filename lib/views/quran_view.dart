import 'package:flutter/material.dart';
import 'package:islami/utils/constants.dart';

import '../widgets/most_recently_list_view.dart';
import '../widgets/search_list_view.dart';
import '../widgets/sura_list_view.dart';
import '../widgets/top_header_logo.dart';
import '../utils/model.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  var searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    searchController.addListener(onSearch);
  }

  onSearch() {
    SuraModel.searchList.clear();
    String text = searchController.text;
    if (text.isNotEmpty) {
      for (String data in SuraModel.suraNameEnList) {
        if (data.toLowerCase().contains(text.toLowerCase())) {
          SuraModel.searchList.add(data);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home/background.png'),
              fit: BoxFit.contain)),
      child: SafeArea(
        child: Column(
          children: [
            const TopHeaderLogo(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: searchController,
                /* onChanged: (value){
                  value = searchController.text;
                },*/
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: AppColors.kPrimaryColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: AppColors.kPrimaryColor)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: AppColors.kPrimaryColor),
                    ),
                    prefixIcon: const ImageIcon(
                      AssetImage('assets/images/home/quran0.png'),
                      color: AppColors.kPrimaryColor,
                    ),
                    label: const Text('Sura Name',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kWhiteColor))),
              ),
            ),
            SuraModel.searchList.isEmpty
                ? const Expanded(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 10),
                              child: Text(
                                'Most Recently ',
                                style: TextStyle(
                                    color: AppColors.kWhiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            )),
                        MostRecentlyListView(),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, top: 10, bottom: 16),
                              child: Text(
                                'Suras List',
                                style: TextStyle(
                                    color: AppColors.kWhiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            )),
                        SuraListView()
                      ],
                    ),
                  )
                : const SearchListView()
          ],
        ),
      ),
    );
  }
}
