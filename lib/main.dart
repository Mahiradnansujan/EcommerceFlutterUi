import 'package:flutter/material.dart';
import 'package:ticketapp/home.dart';
import 'package:carousel_pro/carousel_pro.dart';


//my own imports
import 'package:ticketapp/componets/horizontal_listview.dart';
import 'package:ticketapp/componets/products.dart';
import 'package:ticketapp/pages/cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
          )
  );

}

class HomePage  extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        
        boxFit: BoxFit.cover,
        
        images: [
          AssetImage('images/cara/1.jpg'),
          AssetImage('images/cara/2.jpg'),
          AssetImage('images/cara/3.jpg'),
        ],
        autoplay: true,
      //  animationCurve: Curves.fastOutSlowIn,
      //  animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
     );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Orchid Agro'),
        actions: [
                new IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,),),
                new IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));}, icon: Icon(Icons.shopping_cart,color: Colors.black,),)
        ],
      ),
        drawer: new Drawer(

          child: new ListView(
            children: [
  //   Header            
              new UserAccountsDrawerHeader(
                accountName: Text('Mahir adnan sujan'), 
                accountEmail: Text('mahiradnan12@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(


                    
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.green
                ),
                ),

    // body
             InkWell(
              onTap: (){},
               child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.teal,),
               ),
             ),

             InkWell(
              onTap: (){},
               child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person,color: Colors.black,),
               ),
             ), 
              
            InkWell(
              onTap: (){},
               child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.purple,),
               ),
             ),

              InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
               child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.dashboard,color: Colors.deepOrange,),
               ),
             ),

             InkWell(
              onTap: (){},
               child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.red,),
               ),
             ),

             InkWell(
              onTap: (){},
               child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue,),
               ),
             ),

            InkWell(
              onTap: (){},
               child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),
               ),
             ),

            ],

          ),
        ),
      body: new Column(
        children: <Widget> [
          //image carousel begin here
          image_carousel,

          //pading widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: new Text('Categories')),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: new Text('Recent produtcs')),),

          //grid view
          Flexible(child: Products()),
          

        ],
      ),
    );
  }
}