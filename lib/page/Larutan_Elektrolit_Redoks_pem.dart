import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class LarutanElektrolitRedoksPem extends StatefulWidget {
  @override
  _LarutanElektrolitRedoksPemState createState() =>
      _LarutanElektrolitRedoksPemState();
}

class _LarutanElektrolitRedoksPemState
    extends State<LarutanElektrolitRedoksPem> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "A. Elektrolit dan Non Elektrolit";
  String kategori2 = "B. Konsep Redoks";
  String titleKategori = "Larutan Elektolit dan Konsep Redoks";

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 71; i++) {
      if (i <= 20) {
        _pages.add(
          SliderBox(
            image: "assets/images/pembahasan/elektrolitNonElektrolitPem-$i.PNG",
            kategori: kategori,
          ),
        );
      } else {
        int temp = i - 20;
        _pages.add(
          SliderBox(
            image: "assets/images/pembahasan/reaksiRedoksPem-$temp.png",
            kategori: kategori2,
          ),
        );
      }
    }
    print(_pages.length);
    return Scaffold(
        backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              type: "jawaban",
              kategori: kategori,
              pages: _pages,
              soal: "(Soal UN 2018/2019)",
              soalLimit: 19,
              soal2: "(Soal SBMPTN 2020)",
              soalLimit2: 71,
              soalLimit3: 100,
              soalLimit4: 100,
            )));
  }
}
