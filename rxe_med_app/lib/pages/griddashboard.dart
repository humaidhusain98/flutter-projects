import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Beauty",
      subtitle: "Get Tips",
      img: "assets/icon/beauty.png");

  Items item2 = new Items(
    title: "Experts",
    subtitle: "Get help from experts",
    img: "assets/icon/expert.png",);

  Items item3 = new Items(
    title: "Diary",
    subtitle: "Record your data",
    img: "assets/icon/diary.png",
  );
  Items item4 = new Items(
    title: "Near",
    subtitle: "Visit the nearest center",
    img: "assets/icon/near.png",
  );
  Items item5 = new Items(
    title: "Cosmetic",
    subtitle: "Visit the e-store",
    img: "assets/icon/cosmetic.png",
  );
  Items item6 = new Items(
    title: "community",
    subtitle: "check out discussions",
    img: "assets/icon/community.png",
  );


  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 8, right: 8),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                ],
              ),
            );
          }).toList());

  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img});
}
