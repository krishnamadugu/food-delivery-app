import 'package:food_delivery_app/features/homePage/domain/entities/restaurant_sub_entities.dart';

class RestaurantEntity {
  late final String id;
  late final String name;
  late final String desc;
  late final String lat;
  late final String lon;
  late final String imgUrl;
  late final List<ReviewsEntity> reviews;

  RestaurantEntity(
      {required this.id,
      required this.name,
      required this.desc,
      required this.lat,
      required this.lon,
      required this.imgUrl,
      required this.reviews});
}
