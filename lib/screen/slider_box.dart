import 'package:bank_kimia_x/screen/result_screen.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

class SliderBox extends StatelessWidget {
  final String image;
  final String kategori;
  final String kategori2;

  SliderBox({this.image, this.kategori, this.kategori2});

  @override
  Widget build(BuildContext context) {
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Container(
      margin: EdgeInsets.all(isLandscape ? 5 : 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            (kategori != null)
                ? Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      kategori,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )
                : Container(),
            Image(
              image: AssetImage("$image"),
              fit: BoxFit.fill,
              width: double.maxFinite,
            ),
            //tombol pembahasan
          ],
        ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  //ambil dari list di page
  final List<Widget> pages;
  final List<String> jawaban;
  final String soal;
  final int soalLimit;
  final String soal2;
  final int soalLimit2;
  final String soal3;
  final int soalLimit3;
  final String soal4;
  final int soalLimit4;
  final String type;
  final String kategori;
  final Widget pembahasan;
  Box(
      {this.pages,
      this.pembahasan,
      this.jawaban,
      @required this.type,
      this.kategori,
      this.soal,
      this.soal2,
      this.soal3,
      this.soal4,
      this.soalLimit,
      this.soalLimit2,
      this.soalLimit3,
      this.soalLimit4});

  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _currentPage = 0;
  int _currentPageSoal = 0;
  PageController _controller = PageController();
  List<String> tempList = [];

  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    print("page sekarang : " +
        _currentPageSoal.toString() +
        " radio ke - " +
        value.toString());
    setState(() {
      _radioValue = value;
      switch (_radioValue) {
        case 0:
          break;
        case 1:
          //tempList.insert(_radioValue - 1, "A");
          tempList[_currentPageSoal] = "A";
          break;
        case 2:
          tempList[_currentPageSoal] = "B";
          break;
        case 3:
          tempList[_currentPageSoal] = "C";
          break;
        case 4:
          tempList[_currentPageSoal] = "D";
          break;
        case 5:
          tempList[_currentPageSoal] = "E";
          break;
      }
    });
  }

  //kejadian yang akan terjadi ketika di slide
  _onChanged(int index) {
    print("Sekarang index ke-" + index.toString());
    setState(() {
      if (index <= 9) {
        _currentPage = index;
        _currentPageSoal = index;
      } else if (index >= 10 && index <= 19) {
        _currentPage = index - 10;
        _currentPageSoal = index;
      } else if (index >= 20 && index <= 29) {
        _currentPage = index - 20;
        _currentPageSoal = index;
      } else if (index >= 30 && index <= 39) {
        _currentPage = index - 30;
        _currentPageSoal = index;
      } else if (index >= 40 && index <= 49) {
        _currentPage = index - 40;
        _currentPageSoal = index;
      } else if (index >= 50 && index <= 59) {
        _currentPage = index - 50;
        _currentPageSoal = index;
      } else if (index >= 60 && index <= 69) {
        _currentPage = index - 60;
        _currentPageSoal = index;
      }
    });
  }

  checkJawaban() {
    print(tempList[_currentPageSoal]);
    switch (tempList[_currentPageSoal]) {
      case "X":
        _radioValue = 0;
        break;
      case "A":
        //tempList.insert(_radioValue - 1, "A");
        _radioValue = 1;
        break;
      case "B":
        _radioValue = 2;
        break;
      case "C":
        _radioValue = 3;
        break;
      case "D":
        _radioValue = 4;
        break;
      case "E":
        _radioValue = 5;
        break;
    }
  }

  @override
  void initState() {
    //menambah nilai temp dummy
    if (widget.type == "soal")
      for (var i = 0; i < widget.jawaban.length; i++) {
        tempList.add("X");
      }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.soalLimit2);
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    print(widget.pages.length);
    print(tempList.toString());
    if (widget.type == "soal") {
      print("jawaban benar: " + widget.jawaban.length.toString());
      checkJawaban();
    }

    return Column(
      children: <Widget>[
        Expanded(
          flex: isLandscape
              ? widget.type == "soal"
                  ? 3
                  : 5
              : widget.type == "soal"
                  ? 4
                  : 6,
          child: Container(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: widget.pages.length,
              onPageChanged: _onChanged,
              itemBuilder: (context, int index) {
                return widget.pages[index];
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            /* color: Colors.amber, */
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    /* color: Colors.blueAccent, */
                    child: Center(
                      child: Text(
                        _currentPageSoal > widget.soalLimit
                            ? widget.soal2
                            : _currentPageSoal > widget.soalLimit2
                                ? widget.soal3
                                : _currentPageSoal > widget.soalLimit3
                                    ? widget.soal4
                                    : widget.soal,
                        style: TextStyle(fontSize: isLandscape ? 15 : 25),
                      ),
                    ),
                  ),
                ),
                widget.type == "soal"
                    ? Expanded(
                        flex: 1,
                        child: Container(
                          /* color: Colors.red, */
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text(
                                'Pilihan : ',
                                style: new TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: new Radio(
                                  value: 1,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                              ),
                              new Text(
                                'A',
                                style: new TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: new Radio(
                                  value: 2,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                              ),
                              new Text(
                                'B',
                                style: new TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: new Radio(
                                  value: 3,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                              ),
                              new Text(
                                'C',
                                style: new TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: new Radio(
                                  value: 4,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                              ),
                              new Text(
                                'D',
                                style: new TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: new Radio(
                                  value: 5,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                              ),
                              new Text(
                                'E',
                                style: new TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _currentPageSoal != 0
                          ? Container(
                              margin: EdgeInsets.all(isLandscape ? 5 : 5),
                              child: InkWell(
                                onTap: () {
                                  _controller.previousPage(
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInOutQuint);
                                },
                                child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: 50,
                                    alignment: Alignment.center,
                                    width: 175,
                                    decoration: BoxDecoration(
                                        color: baseColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "SEBELUMNYA",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black),
                                    )),
                              ),
                            )
                          : Container(),
                      /* Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(10, (int index) {
                            return AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: 10,
                              width: (index == _currentPage) ? 30 : 10,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: isLandscape ? 15 : 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == _currentPage)
                                      ? Colors.lightBlueAccent
                                      : Colors.lightBlueAccent
                                          .withOpacity(0.5)),
                            );
                          }),
                        ),
                      ), */
                      (_currentPageSoal == widget.pages.length - 1)
                          ? Container(
                              margin: EdgeInsets.all(isLandscape ? 5 : 5),
                              child: InkWell(
                                onTap: () {
                                  if (widget.type == "soal") {
                                    double score = 0;
                                    int salah = 0;
                                    int benar = 0;
                                    double scorePersoal =
                                        100 / (_currentPageSoal + 1);
                                    print(scorePersoal);
                                    for (var i = 0;
                                        i < widget.jawaban.length;
                                        i++) {
                                      if (widget.jawaban[i] == tempList[i]) {
                                        benar = benar + 1;
                                        score = score + scorePersoal;
                                      } else {
                                        salah = salah + 1;
                                      }
                                    }
                                    print("score = " +
                                        score.toString() +
                                        " benar = " +
                                        benar.toString() +
                                        " salah = " +
                                        salah.toString());
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => ResultScreen(
                                                  score: score,
                                                  benar: benar,
                                                  salah: salah,
                                                  kategori: widget.kategori,
                                                  pembahasan: widget.pembahasan,
                                                )));
                                  } else {
                                    int count = 0;
                                    Navigator.of(context)
                                        .popUntil((_) => count++ >= 2);
                                  }
                                },
                                child: Container(
                                  child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      height: 50,
                                      alignment: Alignment.center,
                                      width: 175,
                                      decoration: BoxDecoration(
                                          color: baseColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        (widget.type == "soal")
                                            ? "SELESAI"
                                            : "KELUAR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black),
                                      )),
                                ),
                              ),
                            )
                          : Container(
                              margin: EdgeInsets.all(isLandscape ? 5 : 5),
                              child: InkWell(
                                onTap: () {
                                  _controller.nextPage(
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInOutQuint);
                                },
                                child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: 50,
                                    alignment: Alignment.center,
                                    width: 175,
                                    decoration: BoxDecoration(
                                        color: baseColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "SELANJUTNYA",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black),
                                    )),
                              ),
                            )
                    ],
                  ),
                ),
                /*  SizedBox(
                  height: 5,
                ) */
              ],
            ),
          ),
        )
      ],
    );
  }
}
