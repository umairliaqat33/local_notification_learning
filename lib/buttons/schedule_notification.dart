import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notification/notification%20service/notification_service.dart';

class ScheduleNotification extends StatefulWidget {
  const ScheduleNotification({Key? key}) : super(key: key);

  @override
  State<ScheduleNotification> createState() => _ScheduleNotificationState();
}

class _ScheduleNotificationState extends State<ScheduleNotification> {
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
        log("notification scheduled");
        _notificationService.scheduleNotification(
          "I am scheduled to every minute",
          "Yes i am schedules",
        );
      },
      child: const Text(
        "Push me to schedule notification",
      ),
    );
  }
}
