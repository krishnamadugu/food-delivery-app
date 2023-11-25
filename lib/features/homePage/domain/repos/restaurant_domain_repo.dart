import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/features/homePage/domain/entities/restaurant_entity.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/params/params.dart';

abstract class RestaurantRepository {
  Future<Either<Failure, RestaurantEntity>> getRestaurantEntity(
      {required RestaurantParams params});
}
