import 'package:flutter/material.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  State<NotificationList> createState() => NotificationListState();
}

class NotificationListState extends State<NotificationList> {
  List<String> notifications = [
    'Appointment reminder: Your checkup is scheduled for tomorrow.',
    'New test results are available. Please check them in the app.',
    'You have a new message from your doctor.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notifications[index]),
            onTap: () {
              // Aksi yang akan diambil saat notifikasi diklik
              print('Notification clicked: ${notifications[index]}');
            },
          );
        },
      ),
    );
  }
}
