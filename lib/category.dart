import 'package:eticaret/components/bottomNavigation.dart';
import 'package:eticaret/productDetail.dart';
//import 'package:eticaret/productDetail.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';

class CategoryPages extends StatelessWidget {
  String categoryName;
  CategoryPages(this.categoryName);

  
  final List<Map> products = [
    {
      'isim': 'Surface Laptop 1',
      'fotograf': 'assets/images/laptop1.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 2',
      'fotograf': 'assets/images/laptop2.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 3',
      'fotograf': 'assets/images/laptop3.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 4',
      'fotograf': 'assets/images/laptop4.jpg',
      'fiyat': 'USD 999'
    },
      {
      'isim': 'Surface Laptop 1',
      'fotograf': 'assets/images/laptop1.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 2',
      'fotograf': 'assets/images/laptop2.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 3',
      'fotograf': 'assets/images/laptop3.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 4',
      'fotograf': 'assets/images/laptop4.jpg',
      'fiyat': 'USD 999'
    },
      {
      'isim': 'Surface Laptop 1',
      'fotograf': 'assets/images/laptop1.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 2',
      'fotograf': 'assets/images/laptop2.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 3',
      'fotograf': 'assets/images/laptop3.jpg',
      'fiyat': 'USD 999'
    },
    {
      'isim': 'Surface Laptop 4',
      'fotograf': 'assets/images/laptop4.jpg',
      'fiyat': 'USD 999'
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(categoryName, context),
                  SizedBox(
                    height: 32,
                  ),
                 
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10,
                        
                        crossAxisCount: 2,
                        children: products.map((Map products) {
                          return buildContent(products['isim'],
                              products['fotograf'], products['fiyat'],context);
                        }).toList()),
                  ),
                ],

              ),
            ),
            bottomNavigationBar('search'),
          ],
          
        ),
      ),
    );
  }
}

Widget buildContent(String title, String photoUrl, String price,context) {
  return GestureDetector(
    onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context){
  return ProdcutDetailPage(title);
}));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical :16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 24)
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Image.asset(
            photoUrl,
            width: 119,
            height: 69,
          ),
          SizedBox(
            height: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF0A1034),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  color: Color(0xFF0001FC),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
