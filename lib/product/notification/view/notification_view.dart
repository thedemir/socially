import 'package:flutter/material.dart';
import 'package:toni/core/base/util/app_text_styles.dart';
import '../../../core/base/util/app_colors.dart';
import '../viewmodel/notifiaction_viewmodel.dart';

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
          Row(
            children: [
              Text(
                NotificationItems.title,
                style: AppTextStyles.notificationsTitle,
              ),
              const Spacer(),
              const Icon(
                NotificationItems.icon,
                color: AppColors.purple,
              )
            ],
          ),
          const Expanded(child: _EmptyNotificationsView()),
        ],
      ),
    );
  }
}

class _EmptyNotificationsView extends StatelessWidget {
  const _EmptyNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.notifications_off,
            size: 80,
            color: AppColors.purple,
          ),
          SizedBox(height: 16),
          Text(
            'Hiç bildirim yok',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Yeni bildirimlerinizde burada görünecektir.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
