import 'package:eticaret/catagories.dart';
import 'package:eticaret/components/bottomNavigation.dart';
import 'package:eticaret/components/label.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildBaslik(),
                  SizedBox(height: 24),
                  buildSpeaker(),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildNavigation(text: 'Catagories', icon: Icons.menu,widget: CategoriesPage(),context: context),
                        buildNavigation(
                            text: 'Favorites', icon: Icons.star_border),
                        buildNavigation(
                            text: 'Gifts', icon: Icons.card_giftcard),
                        buildNavigation(
                            text: 'Best selling', icon: Icons.people),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Sales',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF0A1034),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: buildSalesItem(
                            text: 'SmartPhones',
                            photoUrl: 'assets/images/telefon.jpg',
                            discount: '%-50'),
                      ),
                      Expanded(
                        child: buildSalesItem(
                            text: 'Monitors',
                            photoUrl: 'assets/images/monitor.jpg',
                            discount: '%50'),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: buildSalesItem(
                            text: 'SmartPhones',
                            photoUrl: 'assets/images/telefon.jpg',
                            discount: '%-50'),
                      ),
                      Expanded(
                        child: buildSalesItem(
                            text: 'Monitors',
                            photoUrl: 'assets/images/monitor.jpg',
                            discount: '%50'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar('home'),
          ],
        ),
      ),
    );
  }
}



Widget buildNavigation({
  required String text,
  required IconData icon,
  var widget,
  var context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0ECF8),
          ),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              color: Color(0xFF1F53E4),
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildSpeaker() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
    decoration: BoxDecoration(
        color: Color(0xFF0001FC), borderRadius: BorderRadius.circular(6)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Base Home Speaker',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text('USD 279',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
          ],
        ),
        Image.asset(
          'assets/images/indir.jpg',
          height: 50,
          width: 150,
        ),
      ],
    ),
  );
}

Widget buildBaslik() {
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Text(
      'Home',
      style: TextStyle(
          color: Color(0xFF0A1034), fontSize: 32, fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildSalesItem(
    {required String text,
    required String photoUrl,
    required String discount}) {
  return Container(
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      children: [
        //%50
        label(discount),
        SizedBox(
          height: 22,
        ),
        Image.asset(
          photoUrl,
          width: 72,
          height: 144,
        ),
        SizedBox(
          height: 22,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)),
        )
      ],
    ),
  );
}
