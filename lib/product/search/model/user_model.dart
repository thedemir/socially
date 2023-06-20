class UserModel {
  final int id;
  final String name;
  final String userName;
  int followerCount;
  bool isFollowed;
  final bool isOnline;
  final String profilePhotoUrl;

  UserModel(
    this.id,
    this.name,
    this.userName,
    this.followerCount,
    this.isFollowed,
    this.isOnline,
    this.profilePhotoUrl,
  );
}
