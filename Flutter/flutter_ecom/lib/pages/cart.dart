import 'package:flutter/material.dart';

//my imports
import 'package:flutter_ecom/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('cart'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$230"),
            )
            ),

            Expanded(
                child: new MaterialButton(
                    onPressed: () {},
                child: new Text("Check out", style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                ),
            )
          ],
        ),
      ),
    );
  }
}
