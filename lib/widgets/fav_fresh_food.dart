import 'package:flutter/material.dart';
import 'package:food_app/models/fresh_food_model.dart';
import 'package:food_app/screens/details_page.dart';

class FavFreshFoodCarousel extends StatelessWidget {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    return Text('$stars',
        style: TextStyle(fontSize: 10.0, color: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(25, 15, 0, 15),
            child: Text("Favourite",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[800]))),
        Container(
          height: 250,
          //color: Colors.red,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: freshfood.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        imageUrl: freshfood[index].imageUrl,
                        description: freshfood[index].description,
                        price: freshfood[index].price,
                        rating: freshfood[index].rating,
                        shortDesc: freshfood[index].shortDesc,
                        title: freshfood[index].title,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 25),
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    color: Colors.blue,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image(
                          height: 250,
                          width: 170,
                          image: AssetImage(freshfood[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0x00000000), Colors.black26],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 20,
                        child: _buildRatingStars(freshfood[index].rating),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Text(
                          freshfood[index].title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: 32,
                        left: 20,
                        child: Text(
                          freshfood[index].shortDesc,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 20,
                        child: Text(
                          "\$${freshfood[index].price}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
