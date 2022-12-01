import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notification/notification%20service/notification_service.dart';

class PushNotification extends StatefulWidget {
  const PushNotification({Key? key}) : super(key: key);

  @override
  State<PushNotification> createState() => _PushNotificationState();
}

class _PushNotificationState extends State<PushNotification> {
  final NotificationService _notificationService = NotificationService();
  @override
  void initState() {
    super.initState();
    _notificationService.initialiseNotification();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _notificationService.sendNotification(
          "I was pushed right away",
          "pushed right away",
        );
        log("instant notification sent");
      },
      child: const Text(
        "Push me to send notification right away",
      ),
    );
  }
}
