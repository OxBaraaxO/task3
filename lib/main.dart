import 'package:flutter/material.dart';
import 'package:study5/widget/app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shop",
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY SHOP'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                HomeAppScreen(
                    'https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=6&m=1249496770&s=170667a&w=0&h=9uttCAghGWpQC9aNxH7B50vsahNUHFL49IpI7J0Mxug=',
                    'Shoes'),
                HomeAppScreen(
                    'https://mms-images.out.customink.com/mms/images/catalog/styles/125000/catalog_detail_image_medium.jpg?digest=1626386758',
                    'T-Shirt'),
                HomeAppScreen(
                    'https://cdn.britannica.com/74/190774-050-52CE5745/jeans-denim-pants-clothing.jpg',
                    'Pant'),
                HomeAppScreen(
                    'https://media.istockphoto.com/photos/military-combat-boots-picture-id182404380?k=6&m=182404380&s=612x612&w=0&h=HWdWyRe4dmDcRcNayPFPiC-bQisyzzzVoycKYDlbQP4=',
                    'Boot')
              ],
            )
          ],
        ),
      ),
    );
  }
}
