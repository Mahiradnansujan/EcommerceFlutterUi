import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Orchid Agro'),
        actions: [
                new IconButton(
                  onPressed: (){}, icon: Icon(
                    Icons.search,color: Colors.black,),),
                new IconButton(
                  onPressed: (){}, icon: Icon(
                    Icons.shopping_cart,color: Colors.black,),)
        ],
      ),
      body: new ListView(
        children: <Widget> [
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
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                    Expanded(
                     child: new Text("\$${widget.product_detail_old_price}",
                     style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                    ),
                    Expanded(
                     child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                    ),
                    
                    ],
                  )
                ),
                ),),
              ),
              //  the frst buttons=========
              
            Row(
              children: <Widget>[
                // the size button=============
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Chosse the size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("Close"),)
                          ],
                        );
                      });
                    },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
                ),
                  ),
                ),

                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                          title: new Text("Colour"),
                        );
                      });
                    },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(children: <Widget>[
                    Expanded(child: new Text("color")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
                ),
                  ),
                ),

              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(children: <Widget>[
                    Expanded(child: new Text("Qty")
                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                ],
                ),
                 ),
                ),
                ],
            ), 



// the second button 
            
            Row(
              children: <Widget>[
// the size button
            Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy Now")
                  ),
                ),

              new IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.red,)),

              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border), color: Colors.red,),

        ],
            ),
            Divider(),
            new ListTile(title: new Text("product details"),
            subtitle: new Text("all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty"),
            ),
            Divider(),
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),
                ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)
              ],
            ),

            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand x"),)
              ],
            ),

            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
              ],
            ),


            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Similar products"),
            ),

// SIMILAR PRODUCTS SECTIOn
    Container(
      height: 250.0,
      child: Similar_products(),
    )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
 @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

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
        return Similar_Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
      
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({
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