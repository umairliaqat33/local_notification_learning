import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notification/notification%20service/notification_service.dart';

class TimeSchedulesNotification extends StatefulWidget {
  const TimeSchedulesNotification({Key? key}) : super(key: key);

  @override
  State<TimeSchedulesNotification> createState() =>
      _TimeSchedulesNotificationState();
}

class _TimeSchedulesNotificationState extends State<TimeSchedulesNotification> {
  final NotificationService _notificationService = NotificationService();
  @override
  void initState() {
    super.initState();
    _notificationService.initialiseNotification();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        TimeOfDay? time = await showTimePicker(
            context: context, initialTime: TimeOfDay.now());
        log("notification scheduled");
        _notificationService.scheduleWithTime(
          "I am scheduled to every minute",
          "Yes i am schedules",
          Duration(
            minutes: time!.minute,
            hours: time.hour,
          ).inSeconds,
        );
      },
      child: const Text(
        "Push me to schedule with time",
      ),
    );
  }
}
