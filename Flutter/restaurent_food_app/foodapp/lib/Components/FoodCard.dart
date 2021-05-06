import 'package:flutter/material.dart';
import 'package:foodapp/Models/foodCardModel.dart';

class FoodCard extends StatelessWidget {
  final int index;
  final bool isshadow;

  const FoodCard({Key key, this.index, this.isshadow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            isshadow
                ? BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(0, -1),
                  )
                : BoxShadow()
          ]),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodCardModel[index].foodName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              foodCardModel[index].foodType,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),

// TODO: 20:00
          ],
        ),
      ),
    );
  }
}
