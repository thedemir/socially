import 'package:flutter/cupertino.dart';
import 'package:toni/core/base/util/app_text_styles.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.08),
          Text(
            "Bildirimler",
            style: AppTextStyles.notificationsTitle,
          ),
        ],
      ),
    );
  }
}
