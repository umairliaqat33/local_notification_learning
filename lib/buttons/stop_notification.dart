import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notification/notification%20service/notification_service.dart';

class StopNotification extends StatefulWidget {
  const StopNotification({Key? key}) : super(key: key);

  @override
  State<StopNotification> createState() => _StopNotificationState();
}

class _StopNotificationState extends State<StopNotification> {
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
        log("notification stopped");
        _notificationService.stopNotification();
      },
      child: const Text(
        "Push me to stop notification",
      ),
    );
  }
}
