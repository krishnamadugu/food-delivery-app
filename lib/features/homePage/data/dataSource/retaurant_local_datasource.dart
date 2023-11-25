import 'dart:convert';
import 'package:food_delivery_app/features/homePage/data/model/restaurant_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/errors/exceptions.dart';

const cachedRestaurant = 'CACHED_RESTAURANT';

abstract class RestaurantLocalDataSource {
  Future<void>? cacheRestaurant(RestaurantModel? restaurantToCache);
  Future<RestaurantModel> getLastRestaurant();
}

class RestaurantLocalDataSourceImpl implements RestaurantLocalDataSource {
  final SharedPreferences sharedPreferences;

  RestaurantLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<RestaurantModel> getLastRestaurant() {
    final jsonString = sharedPreferences.getString(cachedRestaurant);

    if (jsonString != null) {
      return Future.value(RestaurantModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void>? cacheRestaurant(RestaurantModel? restaurantToCache) async {
    if (restaurantToCache != null) {
      await sharedPreferences.setString(
        cachedRestaurant,
        json.encode(
          restaurantToCache.toJson(),
        ),
      );
    } else {
      throw CacheException();
    }
  }
}
