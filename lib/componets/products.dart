import 'package:flutter/material.dart';
import 'package:ticketapp/pages/product_details.dart';

class Products extends StatefulWidget {
@override
  _ProductsState createState() => _ProductsState();
}
class _ProductsState extends State<Products> {
  var product_list = [
        
          {
            "name": "Blazer",
            "picture": "images/products/8.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/9.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/11.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/12.jpg",
            "old_price":300, 
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/13.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/4.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/5.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/6.jpg",
            "old_price":300,
            "price":250,
          },
          {
            "name": "Lady T-shirt",
            "picture": "images/products/7.jpg",
            "old_price":300,
            "price":250,
          },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          ),
        );
      });
      
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
  this.prod_name,
  this.prod_picture,
  this.prod_old_price,
  this.prod_price,

  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"), 
        child: Material(
          child: InkWell(onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            //here i passing the values of the products details
            builder: (context) => new ProductDetails(
              product_detail_name: prod_name,
              product_detail_new_price: prod_price,
              product_detail_old_price: prod_old_price,
              product_detail_picture: prod_picture,
            ))),

          child: GridTile(
            footer: Container(
              color: Colors.white,
              child: new Row(children: <Widget>[
                Expanded(
                  child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                ),
                new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16.0),)

              ],)
            ),
            child: Image.asset(
              prod_picture,
            fit: BoxFit.cover,
            )),
          ),
          )),
          );
  }
}