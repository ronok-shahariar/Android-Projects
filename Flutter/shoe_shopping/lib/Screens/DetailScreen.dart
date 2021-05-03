import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_shopping/Component/defaultElements.dart';

class DetailScreen extends StatefulWidget {
  final String shoeimage;
  final String persentage;
  final String shoeName;
  final String price;
  final String rating;
  final bool showpersentage;
  final bool activeheart;
  final Color showcasebgcolor;
  final Color lightShowcasebgcolor;

  const DetailScreen(
      {Key key,
      this.shoeimage,
      this.persentage,
      this.shoeName,
      this.price,
      this.rating,
      this.showpersentage,
      this.activeheart,
      this.showcasebgcolor,
      this.lightShowcasebgcolor})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              buildAppBar(),
              widget.showpersentage
                  ? Container(
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
                    )
                  : Container(),
              SizedBox(
                height: 5,
              ),
              buildShoeShowcase(context),
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
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
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
            Expanded(
              child: Container(),
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: DefaultElements.kdefaultredcolor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: DefaultElements.knavbariconcolor,
                      blurRadius: 10,
                      offset: Offset(0, -1),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  height: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildShoeShowcase(context) {
    return Stack(
      children: [
        Container(),

        /// 26:11
      ],
    );
  }
}
