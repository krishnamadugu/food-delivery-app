import 'package:food_delivery_app/core/constants/constants.dart';
import 'package:food_delivery_app/features/homePage/domain/entities/restaurant_sub_entities.dart';

class ReviewModel extends ReviewsEntity {
  ReviewModel(
      {required super.author,
      required super.reviewId,
      required super.imgUrl,
      required super.rating,
      required super.date});

  static List<ReviewModel> fromJson(List<dynamic> jsonList) {
    List<ReviewModel> returnedList = [];
    for (Map<String, dynamic> json in jsonList) {
      returnedList.add(ReviewModel(
        author: json[kReviewAuthor],
        reviewId: json[kReviewId],
        imgUrl: json[kReviewImgUrl],
        rating: json[kReviewRating],
        date: json[kReviewDate],
      ));
    }
    return returnedList;
  }

  Map<String, dynamic> toJson() {
    return {
      kReviewAuthor: author,
      kReviewId: reviewId,
      kReviewImgUrl: imgUrl,
      kReviewRating: rating,
      kReviewDate: date,
    };
  }
}
