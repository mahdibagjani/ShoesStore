import 'package:flutter/material.dart';
import 'package:originalpalv2/bloc/States/MainPageViewState.dart';
import 'package:originalpalv2/component/HeaderSticky.dart';
import 'package:originalpalv2/component/Home/CustomBottomNavigationBar.dart';
import 'package:originalpalv2/component/Home/RowMainListOne.dart';
import 'package:originalpalv2/component/Home/RowMainListReadmore.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderAndImage.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderAutomatic.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderIndicator.dart';
import 'package:originalpalv2/component/Home/RowMainListSliderStack.dart';
import 'package:originalpalv2/component/Home/RowMainListVideo/VideoPlayerRemote.dart';
import 'package:originalpalv2/ui/BrandPage.dart';
import 'package:originalpalv2/ui/DetailsProductPage.dart';
import 'package:originalpalv2/ui/ListOfProductPage.dart';
import 'package:originalpalv2/ui/ReleasesDatePage.dart';
import 'package:originalpalv2/ui/Search/SearchPage.dart';
import 'package:originalpalv2/ui/TypeOfProductsPage.dart';
import 'package:originalpalv2/utils/AppConfig.dart';
import 'package:provider/provider.dart';

import 'package:sticky_infinite_list/sticky_infinite_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final list = List.generate(2, (i) => "item ${i + 1}");

class _HomePageState extends State<HomePage> {
  var _selectedItem = 0;

  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    var cs = Provider.of<MainPageViewState>(context);
    Future.delayed(const Duration(milliseconds: 1), () {
// Here you can write your code
      _pageController.animateToPage(cs.getIndexOfMainOageView,
          duration: Duration(milliseconds: 600),
          curve: Curves.easeIn); //   curve: Curves.easeIn);
      // _pageController.nextPage(
      //   duration: Duration(milliseconds: 800),
      //   curve: Curves.easeIn
      // );
    });
    List<Widget> pages = [
      RefreshIndicator(
        color: Colors.lightBlueAccent,
        child: InfiniteList(
          posChildCount: 8,
          controller: ScrollController(),
          direction: InfiniteListDirection.single,
          builder: (context, index) {
            return InfiniteListItem.overlay(
                headerStateBuilder: (context, state) {
              return HeaderSticky(index: index, text: "hello world ${index}");
            }, contentBuilder: (context) {
              return Container(
                child: Column(
                  children: data(index),
                ),

              );
            });
          },
        ),
        onRefresh: () {
          print('dsfdddddddddddddddddddd');
        },
      ),
      DetailsProductPage(),
      SearchPage(),
      ReleasesDatePage(),
      ListOfProductPage()
    ];

    return SafeArea(
      child: Scaffold(
          body: PageView.builder(
            onPageChanged: (value) => {},

            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: 3,
            itemBuilder: (context, position) {
              if (position == 0) {
                return pages[_selectedItem];
              } else if(position==1){
                return TypeOfProductsPage();//this page contains a complex list
              }else if(position==2){
                return ListOfProductPage(); // this page contans a grid list
              }
            },
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
              iconList: [
                Icons.account_balance,
                Icons.home,
                Icons.search,
                Icons.supervised_user_circle,
                Icons.image,
              ],
              defaultSelectedIndex: 0,
              onChange: (value) {
                setState(() {
                  _selectedItem = value;
                  cs.setIndexMainPageView(0);
                });
                print(_selectedItem);
              },
              boxDecoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 1),
                )
              ]))),
    );
  }

  List<Widget> data(int count) {
    List<Widget> item = List();
    for (int i = 0; i <= count; i++) {
      if (i == 3) {
        //todo: adan bejaye i minivisim type==1 ya type=2
        item.clear();
        item.add(RowMainListOne(
          text:
              "I'm open for collaborations. I can made for you great web designs,",
          buttonTextList: ["JUST KIDS. BUY .. "],
          title: "NITE JOGGER",
          image:
              "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
          subTitle:
              "I'm open for collaborations. I can made for you great web designs, portfolios, landing pages and much others at good price.",
        ));
      } else if (i == 2 || i == 7) {
        item.clear();
        item.add(RowMainListSliderIndicator(
          text:
              "I'm open for collaborations. I can made for you great web designs,",
          buttonTextList: ["come onnn", " WHAT R Uu DOING ?"],
          title: "NITE JOGGER",
          subTitle:
              "I'm open for collaborations. I can made for you great web designs, portfolios, landing pages and much others at good price.",
          images: [
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg"
          ],
        ));
      } else if (i == 4) {
        item.clear();
        item.add(RowMainListSliderAutomatic(
          text:
              "I'm open for collaborations. I can made for you great web designs, portfolios, landing pages and much others at good price.",
          buttonTextList: ["come onnn", " WHAT R U DOING ?"],
          title: "NITE JOGGER",
          subTitle: "I'm open for collaborations. I can made for ",
          images: [
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://sneakers-magazine.com/wp-content/uploads/2019/04/adidas-nite-jogger-story-2019-mood-4.jpg"
          ],
        ));
      } else if (i == 6) {
        item.clear();
        item.add(VideoPlayerRemote(
            url:
                "https://originalpal.com/panel/products/September2019/8xook64OTYLKY8zSR4Ua.mp4"));
      } else if (i == 5) {
        item.clear();
        item.add(RowMainListSliderStack(
          text:
              "I'm open for collaborations. I can made for you great web designs,",
          buttonTextList: ["come onnn", " WHAT R U DOING ?"],
          title: "NITE JOGGER",
          subTitle:
              "I'm open for collaborations. I can made for you great web designs, portfolios, landing pages and much others at good price.",
          images: [
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://sneakers-magazine.com/wp-content/uploads/2019/04/adidas-nite-jogger-story-2019-mood-4.jpg"
          ],
          imagesTextList: ["originalpal", "originalpal2", "fake"],
        ));
      } else if (i == 0) {
        item.clear();
        item.add(RowMainListReadmore(
          text: "I can made for you great web design",
          buttonText: "READ MORE",
        ));
      } else if (i == 1) {
        item.clear();
        item.add(RowMainListSliderAndImage(
          text:
              "I'm open for collaborations. I can made for you great web designs,",
          buttonTextList: ["JUST KIDS. BUY .. ", " WHAT R U DOING ?"],
          title: "NITE JOGGER",
          image:
              "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
          subTitle:
              "I'm open for collaborations. I can made for you great web designs, portfolios, landing pages and much others at good price.",
          images: [
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg",
            "https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/nlNL/Images/originals_ss19_nitejogger_drop3_clp_glass_emailsignup_tablet_tcm204-340874.jpg"
          ],
        ));
      } else {
        item.clear();
        item.add(RowMainListReadmore(
          text: "I can made for you great web design",
          buttonText: "READ MORE",
        ));
      }
    }

    return item;
  }
}
