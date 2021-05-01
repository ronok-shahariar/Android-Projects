import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoe_shopping/Component/defaultElements.dart';
import 'package:shoe_shopping/Models/ShoelistModel.dart';
import 'package:shoe_shopping/Models/categoriesModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultElements.kdefaultbgcolor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(),
              buildProductSection(),
              SizedBox(
                height: 20,
              ),
              buildCategoriesSection(context),
              SizedBox(
                height: 20,
              ),
              builditemCard(),
            ],
          ),
        ],
      ),
    );
  }

  buildAppBar() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/menu.svg",
              height: 25,
            ),
            Expanded(child: Container()),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "X",
                  style: TextStyle(
                    color: DefaultElements.kprimarycolor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                text: "E",
                style: TextStyle(
                  color: DefaultElements.ksecondrycolor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ])),
            Expanded(child: Container()),
            SvgPicture.asset(
              "assets/icons/search_icon.svg",
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Padding buildProductSection() {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: 10, right: 25),
      child: Row(
        children: [
          Text(
            "Our product",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            "Sort by",
            style: TextStyle(
              color: DefaultElements.knavbariconcolor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 15,
            color: DefaultElements.knavbariconcolor,
          )
        ],
      ),
    );
  }

  buildCategoriesSection(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: categoriesModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      selectedIndex == index
                          ? BoxShadow(
                              color: DefaultElements.knavbariconcolor,
                              blurRadius: 10,
                              offset: Offset(0, -1))
                          : BoxShadow()
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "${categoriesModel[index].image}",
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${categoriesModel[index].title}",
                      style: TextStyle(
                        color: selectedIndex == index
                            ? DefaultElements.kprimarycolor
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  builditemCard() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Container(
            height: 220,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: DefaultElements.knavbariconcolor,
                    offset: Offset(0, -1),
                    blurRadius: 10)
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: DefaultElements.ksecondrycolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "30%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 5, left: 5),
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/heart.svg",
                            height: 20,
                            color: DefaultElements.knavbariconcolor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: shoeListModel[0].showcasebgcolor,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: shoeListModel[0].showcasebgcolor,
                            shape: BoxShape.circle,

                            // Border
                            // TODO :
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
