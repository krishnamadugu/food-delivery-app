import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/errors/exceptions.dart';
import 'package:food_delivery_app/core/errors/failures.dart';
import 'package:food_delivery_app/core/params/params.dart';
import 'package:food_delivery_app/features/homePage/data/dataSource/restaurant_remote_datasource.dart';
import 'package:food_delivery_app/features/homePage/data/model/restaurant_model.dart';
import 'package:food_delivery_app/features/homePage/domain/repos/restaurant_domain_repo.dart';

import '../../../../core/connection/network_info.dart';
import '../dataSource/retaurant_local_datasource.dart';

class RestaurantRepositoryImpl extends RestaurantRepository {
  late final RestaurantRemoteDataSource remoteDataSource;
  late final RestaurantLocalDataSource localDataSource;
  late final NetworkInfo networkInfo;

  RestaurantRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, RestaurantModel>> getRestaurantEntity(
      {required RestaurantParams params}) async {
    if (await networkInfo.isConnected == true) {
      try {
        final remoteRestaurant =
            await remoteDataSource.getRestaurant(params: params);
        localDataSource.cacheRestaurant(remoteRestaurant);
        return Right(remoteRestaurant);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server Exception'));
      }
    } else {
      try {
        final localRestaurant = await localDataSource.getLastRestaurant();
        return Right(localRestaurant);
      } on CacheException {
        return Left(CacheFailure(errorMessage: "No Local Data Found"));
      }
    }
  }
}
