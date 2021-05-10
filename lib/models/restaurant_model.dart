class Restaurant {
  String imageUrl;
  String title;
  double distance;
  int rating;

  Restaurant({this.imageUrl, this.title, this.distance, this.rating});
}

List<Restaurant> restaurants = [
  Restaurant(
    imageUrl: 'assets/kfc.png',
    title: 'KFC',
    distance: 2.2,
    rating: 4,
  ),
  Restaurant(
    imageUrl: 'assets/chicken_station.png',
    title: 'Chicken Station',
    distance: 1.3,
    rating: 4,
  ),
];
