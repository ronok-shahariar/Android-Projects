import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Fashapp'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: new ListView(
        children: [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: [
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
// ============== First Button ==============
          Row(
            children: [
// ==============  the size button  ===============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: [
                          new MaterialButton(onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("close"),
                            textColor: Colors.blue,
                          ),
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              // ==============  the size button  ===============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return new AlertDialog(
                        title: new Text("Color"),
                        content: new Text("Choose the color"),
                        actions: [
                          new MaterialButton(onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("close"),
                            textColor: Colors.blue,
                          ),
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              // ==============  the size button  ===============
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return new AlertDialog(
                        title: new Text("Quantity"),
                        content: new Text("Choose Quantity"),
                        actions: [
                          new MaterialButton(onPressed: () {
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),
                            textColor: Colors.blue,
                          ),
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Quantity")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

// ============== second button ==============
          Row(
            children: [
// ==============  the size button  ===============
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")),
              ),

              new IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {},
              ),
            ],
          ),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Style is temporary but elegance is forever. Grab this elegance with this Royal Black Printed Blazer enhanced with fncy buttons and two pockets. Design Colour scheme and customizations avialable.Specification:-\n"
                "Style :- Blazers\nMaterial /color :-Printed/Black\nType of work :-Pattern Only\nSet contains :-Blazer"),
          )
        ],
      ),
    );
  }
}
