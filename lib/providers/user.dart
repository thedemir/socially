import 'package:flutter/cupertino.dart';
import 'package:toni/core/data/profile_data.dart';
import 'package:toni/product/profile/model/profile_model.dart';

class UserProvider extends ChangeNotifier {
  late ProfileModel profileData;
  Future getProfileDetail() async {
    await Future.delayed(Duration(seconds: 1));
    profileData = ProfileData.profileData;

    notifyListeners();
  }
}
