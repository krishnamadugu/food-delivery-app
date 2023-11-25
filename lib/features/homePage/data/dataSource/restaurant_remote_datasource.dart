import 'dart:convert';

import 'package:food_delivery_app/constants/api_constants.dart';
import 'package:food_delivery_app/constants/api_paths.dart';
import 'package:http/http.dart' as http;
import '../../../../core/params/params.dart';
import '../model/restaurant_model.dart';

abstract class RestaurantRemoteDataSource {
  Future<RestaurantModel> getRestaurant({required RestaurantParams params});
}

class RestaurantRemoteDataSourceImpl implements RestaurantRemoteDataSource {
  @override
  Future<RestaurantModel> getRestaurant(
      {required RestaurantParams params}) async {
    const String apiUrl = ApiPaths.baseUrl + ApiPaths.detail;
    final url = Uri.parse(apiUrl);
    final apiHeaders = {
      ApiConstants.kRapidApiHost: ApiConstants.kRapidApiHostVal,
      ApiConstants.kRapidApiKey: ApiConstants.kRapidApiKeyVal,
    };
    final apiBody = {
      {
        "currency": params.currency,
        "language": params.language,
        "location_id": params.locationId,
      }
    };

    final response = await http.post(url, headers: apiHeaders, body: apiBody);
    return RestaurantModel.fromJson(jsonDecode(response.body));
  }
}
