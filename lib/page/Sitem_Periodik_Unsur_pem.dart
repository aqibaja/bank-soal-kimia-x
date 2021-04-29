import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class SistemPeriodikUnsurPem extends StatefulWidget {
  @override
  _SistemPeriodikUnsurPemState createState() => _SistemPeriodikUnsurPemState();
}

class _SistemPeriodikUnsurPemState extends State<SistemPeriodikUnsurPem> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Sistem Periodik Unsur";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 20; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/pembahasan/sistemPeriodikUnsurPem-$i.png",
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
              pages: _pages,
              soal: "(Soal UN 2016/1017)",
              soalLimit: 20,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              kategori: kategori,
            )));
  }
}
