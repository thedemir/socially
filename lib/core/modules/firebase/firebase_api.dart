import 'package:firebase_messaging/firebase_messaging.dart';

import '../../constants/navigation/navigation_constants.dart';
import '../../navigation/navigation_service.dart';

Future<void> handleBackGroundMessage(RemoteMessage message) async {
  print("Title : ${message.notification?.title}");
  print("Body : ${message.notification?.body}");
  print("data : ${message.data}");
}

class FireabaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  void handleMesage(RemoteMessage? message) {
    if (message == null) return;
    print(message.data);
    NavigationService.instance
        .navigateToPage(path: NavigationConstants.MAIN_PAGE_VIEW);
  }

  Future initPushNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance.getInitialMessage().then(handleMesage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMesage);
    FirebaseMessaging.onBackgroundMessage(handleBackGroundMessage);
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final FCMToken = await _firebaseMessaging.getToken();
    print("Token $FCMToken");
    initPushNotifications();
  }
}
