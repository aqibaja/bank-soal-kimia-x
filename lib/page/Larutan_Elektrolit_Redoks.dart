import 'package:bank_kimia_x/page/Larutan_Elektrolit_Redoks_pem.dart';
import 'package:bank_kimia_x/screen/slider_box.dart';
import 'package:flutter/material.dart';
import 'package:bank_kimia_x/appBar.dart';

class LarutanElektrolitRedoks extends StatefulWidget {
  @override
  _LarutanElektrolitRedoksState createState() =>
      _LarutanElektrolitRedoksState();
}

class _LarutanElektrolitRedoksState extends State<LarutanElektrolitRedoks> {
  //list yang akan ditampilkan perslider
  List<Widget> _pages = [];
  String kategori = "A. Elektrolit dan Non Elektrolit";
  String kategori2 = "B. Konsep Redoks";
  String titleKategori = "Larutan Elektolit dan Konsep Redoks";
  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 65; i++) {
      if (i <= 20) {
        _pages.add(
          SliderBox(
            image: "assets/images/soal/elektrolitNonElektrolit-$i.PNG",
            kategori: kategori,
          ),
        );
      } else {
        int temp = i - 20;
        _pages.add(
          SliderBox(
            image: "assets/images/soal/reaksiRedoks-$temp.PNG",
            kategori: kategori2,
          ),
        );
      }
    }
    return Scaffold(
        //backgroundColor: Color(0xffe4fbf9),
        appBar: appBar(kategori, context),
        body: Container(
            color: /* Colors.grey[200] */ Colors.white,
            child: Box(
              pages: _pages,
              kategori: kategori,
              type: "soal",
              soal: "(Soal UN 2018/2019)",
              soalLimit: 19,
              soal2: "(Soal SBMPTN 2020)",
              soalLimit2: 65,
              soalLimit3: 100,
              soalLimit4: 100,
              pembahasan: LarutanElektrolitRedoksPem(),
              jawaban: [
                "C",
                "C",
                "B",
                "D",
                "B",
                "B",
                "A",
                "E",
                "B",
                "C",
                "E",
                "D",
                "D",
                "C",
                "E",
                "E",
                "A",
                "A",
                "E",
                "C",
                "C",
                "A",
                "B",
                "E",
                "D",
                "B",
                "C",
                "A",
                "C",
                "B",
                "B",
                "A",
                "D",
                "B",
                "A",
                "A",
                "C",
                "D",
                "D",
                "D",
                "B",
                "D",
                "D",
                "E",
                "C",
                "C",
                "A",
                "D",
                "E",
                "C",
                "A",
                "C",
                "C",
                "B",
                "A",
                "A",
                "D",
                "B",
                "B",
                "B",
                "C",
                "B",
                "D",
                "E",
                "A"
              ],
            )));
  }
}
