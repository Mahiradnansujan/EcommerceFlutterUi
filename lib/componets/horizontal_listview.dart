import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/cats/1.png',
          image_caption: 'shoe',
        ),

        Category(
          image_location: 'images/cats/2.png',
          image_caption: 'Jeans',
        ),

        Category(
          image_location: 'images/cats/3.png',
          image_caption: 'Meat',
        ),

        Category(
          image_location: 'images/cats/4.png',
          image_caption: 'Food',
        ),

        Category(
          image_location: 'images/cats/5.png',
          image_caption: 'Watch',
        ),
        Category(
          image_location: 'images/cats/6.png',
          image_caption: 'Dry Fruits',
        ),
        Category(
          image_location: 'images/cats/7.png',
          image_caption: 'Curry',
        ),
        Category(
          image_location: 'images/cats/8.png',
          image_caption: 'T-Shirt',
        ),
        Category(
          image_location: 'images/cats/9.png',
          image_caption: 'Chicken',
        ),
        Category(
          image_location: 'images/cats/10.png',
          image_caption: 'Fastfood',
        ),
        Category(
          image_location: 'images/cats/11.png',
          image_caption: 'Ice cream',
        ),
        Category(
          image_location: 'images/cats/12.png',
          image_caption: 'Gadjet',
        ),
        
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40.0,
              height: 40.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}
