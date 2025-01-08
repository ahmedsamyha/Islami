import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/utils/constants.dart';
import 'package:islami/utils/hadith_model.dart';
import 'package:islami/views/hadith_details_view.dart';
import 'package:islami/widgets/hadith_item.dart';
import 'package:islami/widgets/top_header_logo.dart';

class HadithView extends StatefulWidget {
  const HadithView({Key? key}) : super(key: key);

  @override
  _HadithViewState createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithModel> allAhadith = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadHadithFile();
  }

  void loadHadithFile() async {
    try {
      String fileContent =
          await rootBundle.loadString('assets/files/ahadeth.txt');
      List<String> ahadith = fileContent.split("#");

      List<HadithModel> loadedAhadith = ahadith.map((data) {
        List<String> lines = data.trim().split('\n');
        String title = lines[0];
        lines.removeAt(0);
        return HadithModel(title: title, content: lines);
      }).toList();

      setState(() {
        allAhadith = loadedAhadith;
        isLoading = false;
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home/hadithbg.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .32,
            ),
          ],
        ),
        const TopHeaderLogo(),
        isLoading
            ? const Center(child: CircularProgressIndicator())
            : allAhadith.isEmpty
                ? const Center(
                    child: Text(
                      "No Hadiths available.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                : Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return HadithItem(
                        allAhadith: allAhadith[index],
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HadithDetailsView(
                                      title: allAhadith[index].title,
                                      content:
                                          allAhadith[index].content.first)));
                        },
                      );
                    },
                    itemCount: allAhadith.length,
                    physics: const BouncingScrollPhysics(),
                    loop: false,
                    viewportFraction: 0.8,
                    scale: .9,
                  ),
      ],
    );
  }
}
