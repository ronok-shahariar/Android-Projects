import 'package:flutter/material.dart';
import 'package:foodapp/Components/DefaultHeader.dart';
import 'package:foodapp/Components/FoodCard.dart';
import 'package:foodapp/Components/defaultButtons.dart';
import 'package:foodapp/Models/foodCardModel.dart';
import 'package:foodapp/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              DefaultHeader(
                isImage: false,
              ),
              Container(
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Delivery address",
                                  style: TextStyle(
                                    color: Constants.subtitleColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Cantonment, ECB /",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            DefaultButtons(
                              icon: Icon(Icons.search),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            DefaultButtons(
                              icon: Icon(Icons.person),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Scrollbar(
                          isAlwaysShown: true,
                          radius: Radius.circular(30),
                          controller: _scrollController,
                          child: ListView.builder(
                              controller: _scrollController,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: foodCardModel.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(left: 25, right: 5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 20),
                                      width: 330,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            offset: Offset(0, -1),
                                            blurRadius: 8,
                                          )
                                        ],
                                        image: DecorationImage(
                                          image: AssetImage(
                                              foodCardModel[index].bgImage),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.favorite,
                                                  size: 30,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          FoodCard(
                                            index: index,
                                            isshadow: true,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
