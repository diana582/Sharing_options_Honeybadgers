import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social media sharing',
      
      home: ShareDemo(),
    );
  }
}

class ShareDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social media sharing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Check out this item!'),
            
            SizedBox(height: 16),
            
            Image(
              image: NetworkImage(
                  'https://cdn.shopify.com/s/files/1/0061/8627/0804/products/0-modelinfo-kristen-us2_b568ce6a-4d04-4254-a7c3-8797e9f06dcf_450x610_crop_center.jpg?v=1663731408'),
              height: 200,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               GestureDetector(
                onTap: () {
                  Share.share('Check out this item: https://cdn.shopify.com/s/files/1/0061/8627/0804/products/0-modelinfo-kristen-us2_b568ce6a-4d04-4254-a7c3-8797e9f06dcf_450x610_crop_center.jpg?v=1663731408');
                },
                 child: Icon(FontAwesomeIcons.whatsapp,  size: 16.0,
                  
                  ),
               ),
                SizedBox(width: 16),
                GestureDetector(
                onTap: () {
                  Share.share('Check out this item: https://cdn.shopify.com/s/files/1/0061/8627/0804/products/0-modelinfo-kristen-us2_b568ce6a-4d04-4254-a7c3-8797e9f06dcf_450x610_crop_center.jpg?v=1663731408');
                },
                 child: Icon(FontAwesomeIcons.instagram,  size: 16.0,
                  
                  ),
               ),
                SizedBox(width: 16),
                TextButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: 'https://cdn.shopify.com/s/files/1/0061/8627/0804/products/0-modelinfo-kristen-us2_b568ce6a-4d04-4254-a7c3-8797e9f06dcf_450x610_crop_center.jpg?v=1663731408'));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Link copied to clipboard')),
                    );
                  },
                  child: Text('Copy link'),
                  //color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
