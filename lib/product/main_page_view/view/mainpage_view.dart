import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/base/util/app_text_styles.dart';
import 'package:toni/core/component/dialog/circular_progress.dart';
import 'package:toni/product/notification/view/notification_view.dart';
import 'package:toni/product/profile/view/profile_view.dart';
import 'package:toni/product/search/view/search_view.dart';
import 'package:toni/providers/social.dart';
import 'package:toni/providers/user.dart';
import '../../../core/base/util/app_colors.dart';
import '../../home/view/home_view.dart';

class MainPageView extends StatefulWidget {
  final bool isLogin;
  const MainPageView({super.key, this.isLogin = true});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentIndex = 0;
  bool isLoading = true;

  List<Widget> pages = const [
    HomeView(),
    SearchView(),
    NotificationsView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    print("çalıştı");

    Provider.of<SocialProvider>(context, listen: false)
        .getPostsData()
        .then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<UserProvider>(
      builder: (context, userState, child) {
        return Scaffold(
          backgroundColor: AppColors.cultured,
          body: isLoading ? AppCircularProgress() : pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) async {
                setState(() {
                  currentIndex = index;
                });
              },
              backgroundColor: Colors.white,
              elevation: 10,
              unselectedItemColor: AppColors.gainsboro,
              selectedItemColor: AppColors.purple,
              iconSize: 30,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded), label: "Ana Sayfa"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_rounded), label: "Arama"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_rounded),
                    label: "Bildirimler"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_rounded), label: "Profil"),
              ]),
          floatingActionButton: currentIndex == 0
              ? FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                      ),
                      builder: (context) => PostShareModal(),
                    );
                  },
                  backgroundColor: AppColors.purple,
                  child: const Icon(Icons.add),
                )
              : null,
        );
      },
    );
  }
}

class PostShareModal extends StatelessWidget {
  const PostShareModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                CupertinoButton(
                  child: Text(
                    "Paylaş",
                    style: AppTextStyles.postShareButton,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
