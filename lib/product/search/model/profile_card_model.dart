class ProfileCardModel {
  final String name;
  final int followerCount;
  final String image;
  void Function()? onPressed;

  ProfileCardModel(this.name, this.followerCount, this.image, this.onPressed);
}
