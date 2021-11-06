import 'package:eticaret/category.dart';
import 'package:eticaret/components/bottomNavigation.dart';
import 'package:eticaret/components/header.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {

final List <String> categories=[
  'All',
  'Computers',
  'Accessories',
  'SmartPhones',
  'SmartObjects',
  'Speakers',
  'Computers',
  'Accesories',
  'Computers',
  'Accesories'

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                header('Categories', context),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: ListView(
                      children :
                              categories.map((String title) => newLine(title,context)).toList(),
                            
                    ),
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


  Widget newLine(String title,context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return CategoryPages(title);
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        width: double.infinity,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4),
            ]),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0A1034)),
        ),
      ),
    );
  }

