import 'package:food_delivery_app/core/constants/constants.dart';
import 'package:food_delivery_app/features/homePage/data/model/restaurant_submodel.dart';
import 'package:food_delivery_app/features/homePage/domain/entities/restaurant_entity.dart';

class RestaurantModel extends RestaurantEntity {
  RestaurantModel(
      {required String id,
      required String name,
      required String desc,
      required String lat,
      required String lon,
      required String imgUrl,
      required List<ReviewModel> reviews})
      : super(
          id: id,
          name: name,
          desc: desc,
          lat: lat,
          lon: lon,
          imgUrl: imgUrl,
          reviews: reviews,
        );

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      id: json[kLocationId],
      name: json[kName],
      desc: json[kDesc],
      lat: json[kLat],
      lon: json[kLon],
      imgUrl: json[kImgUrl],
      reviews: ReviewModel.fromJson(json[kReviews]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      kName: name,
      kLocationId: id,
      kDesc: desc,
      kLat: lat,
      kLon: lon,
      kImgUrl: imgUrl,
      kReviews: reviews,
    };
  }
}
