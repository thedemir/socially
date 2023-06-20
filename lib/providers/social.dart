import 'package:flutter/cupertino.dart';
import 'package:toni/core/data/post_data.dart';
import 'package:toni/core/data/users_data.dart';
import 'package:toni/product/home/model/post_model.dart';
import 'package:toni/product/search/model/user_model.dart';

class SocialProvider extends ChangeNotifier {
  List<UserModel>? usersData;
  List<PostModel>? postsData;

  Future getPostsData() async {
    await Future.delayed(Duration(seconds: 3));
    postsData = PostData.postData;
    notifyListeners();
  }

  Future getUserData() async {
    Future.delayed(Duration(seconds: 1));
    usersData = UsersData.usersData;
    notifyListeners();
  }

  void followUser(int id) {
    usersData!.forEach((element) {
      if (element.id == id) {
        element.isFollowed = !element.isFollowed;
        element.isFollowed ? element.followerCount++ : element.followerCount--;
      }
    });
    notifyListeners();
  }

  void likePost(int id) {
    postsData!.forEach((element) {
      if (element.id == id) {
        element.isLiked = !element.isLiked;
        element.isLiked ? element.likeCount++ : element.likeCount--;
      }
    });
    notifyListeners();
  }
}
