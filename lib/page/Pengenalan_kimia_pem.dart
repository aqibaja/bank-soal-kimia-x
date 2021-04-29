import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class PengenalanKimiaPem extends StatefulWidget {
  @override
  _PengenalanKimiaPemState createState() => _PengenalanKimiaPemState();
}

class _PengenalanKimiaPemState extends State<PengenalanKimiaPem> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Pengenalan Kimia";

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 30; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/pembahasan/ilmuKimiaPem-$i.png",
        ),
      );
    }
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
              soalLimit: 30,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
            )));
  }
}
