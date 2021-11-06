import 'package:eticaret/components/bottomNavigation.dart';
import 'package:eticaret/components/header.dart';
import 'package:eticaret/components/label.dart';
import 'package:flutter/material.dart';

class ProdcutDetailPage extends StatefulWidget {
  String productName;

  ProdcutDetailPage(this.productName);
  @override
  _ProdcutDetailPageState createState() => _ProdcutDetailPageState();
}

class _ProdcutDetailPageState extends State<ProdcutDetailPage> {
  Color selectedColor = Colors.white;
  int selectedCapasity = 64;
  List<int> capasities = [64, 256, 512];
  
  List<Color> renkler = [
    Colors.lightBlueAccent,
    Colors.black,
    Colors.orangeAccent,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(widget.productName, context),
                    SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListView(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            label('New'),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                                child: Image.asset(
                              'assets/images/telefon.jpg',
                              width: 139,
                              height: 191,
                            )),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Color',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0A1034)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: renkler
                                    .map((Color color) => colorWidget(
                                        renk: color,
                                        selected: selectedColor == color,
                                        sTap: () {
                                          setState(() {
                                            selectedColor = color;
                                          });
                                        }))
                                    .toList()),
                            SizedBox(
                              height: 37,
                            ),
                            Text(
                              'Capasity',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0A1034)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: capasities
                                    .map((int number) => capasityWidget(
                                        capasity: number,
                                        selected: selectedCapasity == number,
                                        sTap: () {
                                          setState(() {
                                            selectedCapasity = number;
                                          });
                                        }))
                                    .toList()),
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFF1F53E4)),
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 100,)
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            bottomNavigationBar('search'),
          ],
        ),
      ),
    );
  }
}

Widget colorWidget(
    {required Color renk,
    required bool selected,
    required final VoidCallback sTap}) {
  return GestureDetector(
    onTap: sTap,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: renk,
          border:
              Border.all(color: Color(0xFF0001FC), width: selected ? 3 : 0)),
      width: 23,
      height: 23,
    ),
  );
}

Widget capasityWidget(
    {required int capasity,
    required bool selected,
    required final VoidCallback sTap}) {
  return GestureDetector(
    onTap: sTap,
    child: Container(
      margin: EdgeInsets.only(right: 23),
      child: Text(
        '$capasity GB',
        style: TextStyle(
            color: Color(selected ? 0xFF0001FC : 0xFFA7A9BE), fontSize: 16),
      ),
    ),
  );
}
