import 'package:bank_kimia_x/page/Ikatan_Kimia_pem.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class IkatanKimia extends StatefulWidget {
  @override
  _IkatanKimiaState createState() => _IkatanKimiaState();
}

class _IkatanKimiaState extends State<IkatanKimia> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "Ikatan Kimia";

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 60; i++) {
      _pages.add(
        SliderBox(
          image: "assets/images/soal/ikatanKimia-$i.PNG",
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
              pages: _pages,
              kategori: kategori,
              soal: "(Soal UAS 2018/2019)",
              soalLimit: 60,
              soalLimit2: 100,
              soalLimit3: 100,
              soalLimit4: 100,
              pembahasan: IkatanKimiaPem(),
              jawaban: [
                "B",
                "D",
                "C",
                "D",
                "C",
                "C",
                "D",
                "D",
                "E",
                "A",
                "D",
                "B",
                "D",
                "A",
                "C",
                "D",
                "A",
                "B",
                "C",
                "C",
                "B",
                "D",
                "D",
                "D",
                "B",
                "D",
                "C",
                "E",
                "A",
                "D",
                "B",
                "C",
                "D",
                "A",
                "B",
                "C",
                "A",
                "A",
                "B",
                "A",
                "B",
                "C",
                "A",
                "B",
                "B",
                "B",
                "E",
                "C",
                "B",
                "C",
                "B",
                "A",
                "E",
                "C",
                "B",
                "C",
                "D",
                "A",
                "D",
                "E"
              ],
            )));
  }
}
