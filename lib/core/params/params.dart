class NoParams {}

class TemplateParams {}

class RestaurantParams {
  late final String currency;
  late final String language;
  late final String locationId;

  RestaurantParams({
    required this.currency,
    required this.language,
    required this.locationId,
  });
}
