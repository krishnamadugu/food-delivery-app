import 'package:food_delivery_app/core/errors/failures.dart';
import 'package:food_delivery_app/core/params/params.dart';
import 'package:food_delivery_app/features/homePage/domain/entities/restaurant_entity.dart';
import '../repos/restaurant_domain_repo.dart';
import 'package:dartz/dartz.dart';

class GetRestaurantInfo {
  late final RestaurantRepository restaurantRepository;
  GetRestaurantInfo({required this.restaurantRepository});

  Future<Either<Failure, RestaurantEntity>> call(
      {required RestaurantParams params}) async {
    return await restaurantRepository.getRestaurantEntity(params: params);
  }
}
