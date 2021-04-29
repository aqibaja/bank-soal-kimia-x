import 'package:bank_kimia_x/appBar.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class IkatanKimiaPem extends StatefulWidget {
  @override
  _IkatanKimiaPemState createState() => _IkatanKimiaPemState();
}

class _IkatanKimiaPemState extends State<IkatanKimiaPem> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Ikatan Kimia";

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 60; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/pembahasan/ikatanKimiaPem-$i.png",
        ),
      );
    }
    return Scaffold(
        backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              pages: _pages,
              kategori: kategori,
              soal: "(Soal UAS 2018/2019)",
              soalLimit: 60,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              type: "jawaban",
            )));
  }
}
