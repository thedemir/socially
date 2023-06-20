import 'package:toni/core/data/users_data.dart';

import '../../product/home/model/post_model.dart';

class PostData {
  static List<PostModel> postData = [
    PostModel(
        id: 1,
        user: UsersData.usersData[0],
        postPhotoUrl: "https://picsum.photos/590/300",
        likeCount: 123,
        isLiked: false),
    PostModel(
        id: 2,
        user: UsersData.usersData[2],
        postPhotoUrl: "https://picsum.photos/550/300",
        likeCount: 55,
        isLiked: false),
    PostModel(
        id: 3,
        user: UsersData.usersData[1],
        postPhotoUrl: "https://picsum.photos/600/300",
        likeCount: 46,
        isLiked: false),
    PostModel(
        id: 4,
        user: UsersData.usersData[2],
        postPhotoUrl: "https://picsum.photos/610/300",
        likeCount: 76,
        isLiked: false),
    PostModel(
        id: 5,
        user: UsersData.usersData[3],
        postPhotoUrl: "https://picsum.photos/560/300",
        likeCount: 21,
        isLiked: false),
  ];
}
