import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({ Key? key }) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
        
          {
            "name": "Blazer",
            "picture": "images/products/8.jpg",
            "price":250,
            "size": "M",
            "color": "Red",
            "quantity": 1,

          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/12.jpg",
            "price":250,
            "size": "L",
            "color": "Black",
            "quantity": 6,
          },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty:Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );

      }); 
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price; 
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
 
 
Single_cart_product({
  this.cart_prod_name,
  this.cart_prod_color,
  this.cart_prod_price,
  this.cart_prod_picture,
  this.cart_prod_qty,
  this.cart_prod_size,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //============================Leading section======================
        leading: new Image.asset(cart_prod_picture,width: 80.0,
        height: 80.0,),

        //==================Title section=====================
        title: new Text(cart_prod_name),

        //==================Subtitle section================
        subtitle: new Column(
          children: <Widget>[
          // Row inside the coloum
          new Row(
            children: <Widget>[
              // this section is for the size of the product
                Padding(padding: const EdgeInsets.all(0.0),
                child: new Text("Size"),
                ),
                Padding(padding: const EdgeInsets.all(4.0),
                child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),

//       =======this section of for the product color==========
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                child: new Text(
                  cart_prod_color,
                  style: TextStyle(color: Colors.red),
                  ),
                ),
            ],
          ),

//  ==============this section is for the product price=============
          new Container(
            alignment: Alignment.topLeft,
            child: new Text(
              "\$${cart_prod_price}", 
            style: TextStyle(
              fontSize: 17.0, 
              fontWeight: FontWeight.bold,
              color: Colors.red
              ),
              ),
          ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
          //new IconButton(icon: Icon(Icons.arrow_drop_up,size: 10,), onPressed: (){}),
          new Text("$cart_prod_qty"),
          //new IconButton(icon: Icon(Icons.arrow_drop_up,size: 10,), onPressed: (){}),

          ],
        ),
      ),
    );
  }

  
  

}

