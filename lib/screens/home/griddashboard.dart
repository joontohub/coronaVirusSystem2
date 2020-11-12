import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virus_bob/screens/gps/gps_tracker.dart';
import 'package:virus_bob/screens/qr_make/qr_make_page.dart';
import 'package:virus_bob/screens/qr_scan/qr_scan_page.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "QR Scan",
      subtitle: "QR Code Scan for 사장님",
      img: "assets/images/qrcode.jpg");

  Items item2 = new Items(
    title: "QR Maker",
    subtitle: "QR maker for 손님",
    img: "assets/images/qrcode.jpg",
  );
  Items item3 = new Items(
    title: "Locations GPS",
    subtitle: "I am tracking you",
    img: "assets/images/map.png",
  );
  Items item4 = new Items(
    title: "Activity",
    subtitle: "Rose favirited your Post",
    img: "assets/images/festival.png",
  );
  Items item5 = new Items(
    title: "To do",
    subtitle: "Homework, Design",
    img: "assets/images/todo.png",
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "",
    img: "assets/images/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];

    var color = 0xff81c784;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () {
                  if (data.title == "QR Scan") {
                    Navigator.pushNamed(context, ScanPage.routeName);
                  } else if (data.title == "QR Maker") {
                    Navigator.pushNamed(context, GeneratePage.routeName);
                  } else if (data.title == "Locations GPS") {
                    Navigator.pushNamed(context, GpsTracker.routeName);
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img});
}
