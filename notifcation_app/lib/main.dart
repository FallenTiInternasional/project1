import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NotificationPage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Notification',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )),
      ),
      body: ListView(
        children: [
          notification(context),
          notification2(context),
          notification3(context),
          markAllRead(context),
        ],
      ),
    );
  }

  Widget notification(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Notification tapped');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMGKi7dsOFfRKHPK1VszvimlHOSSmNBFRuew&usqp=CAU',
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Siap Siap !',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Makanan Kamu Sudah Sampai !',
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    'Gospeed * Yesterday, 19.00',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget notification2(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Notification tapped');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/007/816/882/non_2x/tv-pixel-art-illustration-design-for-game-development-free-vector.jpg',
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cyber Monday Is Here!',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Promo Khusus Buat Kamu! Buruan Pakai :D',
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    'Gospeed * Yesterday, 19.00',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget notification3(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Notification tapped');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIRrAwLTf9PtbOjhh70p9kaz2b9ofvGVlBXg&usqp=CAU',
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Langsung Cek Disini!',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Hei Fallen, Ada Yang Baru Untuk Mu!',
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    'Gospeed * Yesterday, 19.00',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget markAllRead(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Mark all as read');
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(8),
        child: const Center(
          child: Text(
            'Mark all as read',
            style: TextStyle(color: Colors.blue, fontSize: 10),
          ),
        ),
      ),
    );
  }
}