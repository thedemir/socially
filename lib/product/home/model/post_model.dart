import 'package:toni/product/search/model/user_model.dart';

class PostModel {
  int id;
  final UserModel user;
  final String postPhotoUrl;
  int likeCount;
  bool isLiked;

  PostModel({
    required this.id,
    required this.user,
    required this.postPhotoUrl,
    required this.likeCount,
    required this.isLiked,
  });
}
