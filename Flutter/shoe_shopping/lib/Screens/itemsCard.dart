import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_shopping/Component/defaultElements.dart';
import 'package:shoe_shopping/Models/ShoelistModel.dart';

class ItemCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Container(
            // height: 220,
            // width: 150,
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
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 5,
                      left: 0,
                      child: Image.asset(
                        "${shoeListModel[0].shoeimage}",
                        height: 60,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${shoeListModel[0].shoeName}",
                  style: TextStyle(
                    color: DefaultElements.kprimarycolor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${shoeListModel[0].price}",
                  style: TextStyle(
                    color: DefaultElements.kprimarycolor,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
