import 'package:flutter/material.dart';
import 'package:islami/utils/model.dart';
import 'package:islami/utils/sura_name.dart';
import 'package:islami/views/sura_detils.dart';

import '../views/hadith_details_view.dart';
import 'most_recently_item.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: height * .17,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => MostRecentlyItem(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SuraDetails(suraAr: SuraModel.getSuraModel(index).suraNameAr,suraEn: SuraModel.getSuraModel(index).suraNameEn,suraNumber: SuraModel.getSuraModel(index).suraNumber)));
            },
           suraModel: SuraModel.getSuraModel(index),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: SuraModel.suraNameArList.length,
        ),
      ),
    );
  }
}
