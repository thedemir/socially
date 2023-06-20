// bu data apiden gelecek olan kullanıcıları temsil eder

import 'package:toni/product/search/model/user_model.dart';

class UsersData {
  static List<UserModel> usersData = [
    UserModel(
      1,
      "Nurullah Demir",
      "thedemir",
      724,
      true,
      false,
      "https://pbs.twimg.com/profile_images/1650570383345475585/Bf5FZ6FM_400x400.jpg",
    ),
    UserModel(
      2,
      "Halil Doğan",
      "dogan26",
      445,
      true,
      false,
      "https://i.pravatar.cc/290",
    ),
    UserModel(
      3,
      "Selim Ay",
      "ayselim",
      214,
      false,
      true,
      "https://i.pravatar.cc/300",
    ),
    UserModel(
      4,
      "Kerem Şimşek",
      "manifest",
      845,
      true,
      false,
      "https://i.pravatar.cc/295",
    ),
  ];
}
