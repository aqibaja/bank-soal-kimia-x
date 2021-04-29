import 'package:bank_kimia_x/page/Sitem_Periodik_Unsur_pem.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class SistemPeriodikUnsur extends StatefulWidget {
  @override
  _SistemPeriodikUnsurState createState() => _SistemPeriodikUnsurState();
}

class _SistemPeriodikUnsurState extends State<SistemPeriodikUnsur> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Sistem Periodik Unsur";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 20; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/soal/sistemPeriodikUnsur-$i.PNG",
        ),
      );
    }
    return Scaffold(
        //backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              type: "soal",
              kategori: kategori,
              pages: _pages,
              soal: "(Soal UN 2016/1017)",
              soalLimit: 20,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              pembahasan: SistemPeriodikUnsurPem(),
              jawaban: [
                "A",
                "B",
                "C",
                "D",
                "C",
                "E",
                "E",
                "E",
                "A",
                "B",
                "C",
                "D",
                "D",
                "E",
                "C",
                "B",
                "D",
                "C",
                "E",
                "D"
              ],
            )));
  }
}
