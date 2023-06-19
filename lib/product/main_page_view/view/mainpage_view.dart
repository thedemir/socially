import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/product/notification/view/notification_view.dart';
import 'package:toni/product/profile/view/profile_view.dart';
import 'package:toni/product/search/view/search_view.dart';
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
    if (widget.isLogin) {
      super.initState();
      print("çalıştı");

      setState(() {
        isLoading = false;
      });
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer(
      builder: (context, storeState, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
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
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: AppColors.purple,
                )
              : null,
        );
      },
    );
  }
}
