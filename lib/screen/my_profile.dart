import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfileScreen extends StatelessWidget {
  void launchWA({
    @required int phone,
    @required String message,
  }) async {
    String url = "https://wa.me/$phone/?text=${Uri.parse(message)}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch ' + url;
    }
  }

  void launchEmail({
    @required String email,
  }) async {
    String url = "mailto:$email";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch' + url;
    }
  }

  void launchInstagram({
    @required String link,
  }) async {
    String url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch' + url;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/laut.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 125,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularProfileAvatar(
                          "",
                          child: Image.asset(
                            "assets/images/profile.jpeg",
                            fit: BoxFit.fill,
                          ),
                          borderWidth: 7.0,
                          radius: 75,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 75),
                          child: Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => launchInstagram(
                                      link:
                                          "https://www.instagram.com/nonongfahmijar/"),
                                  child: Container(
                                      height: 45,
                                      width: 45,
                                      child: Image.asset(
                                        "assets/images/instagram-color.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                GestureDetector(
                                  onTap: () => launchWA(
                                      phone: 085270552869,
                                      message: "Assalamu'alaikum"),
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    child: Image.asset(
                                      "assets/images/whatsapp-square-color.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                GestureDetector(
                                  onTap: () => launchEmail(
                                      email: "nonongfahmizal@gmail.com"),
                                  child: Container(
                                      height: 45,
                                      width: 45,
                                      child: Image.asset(
                                        "assets/images/gmail.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nonong fahmizal",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "UIN Ar-Raniry Banda Aceh",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "NIM. 160208077",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            child: Divider(
                              thickness: 5,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 115,
                            color: Colors.white,
                            child: Text(
                              "BIOGRAFI",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    listProfile("Tempat / tanggal lahir",
                        "Indra Damai / 7 Maret 1998", FontAwesomeIcons.home),
                    listProfile("Agama", "Islam", FontAwesomeIcons.mosque),
                    listProfile("Jenis Kelamin", "Perempuan",
                        FontAwesomeIcons.venusMars),
                    listProfile("Program Studi", "Pendidikan Kimia",
                        FontAwesomeIcons.university),
                    listProfile("Angkatan", "2016", FontAwesomeIcons.star),
                    listProfile("Dosen Pembimbing 1", "Muammar Yulian M.Si",
                        FontAwesomeIcons.userTie),
                    listProfile("Dosen Pembimbing 2", "Safrijal, M.Pd",
                        FontAwesomeIcons.userTie),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Stack(
                        children: [
                          Container(
                            height: 25,
                            child: Divider(
                              thickness: 5,
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 150,
                            color: Colors.white,
                            child: Text(
                              "PENDIDIKAN",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    listProfile("2010", "SDN Utama kluet Selatan",
                        FontAwesomeIcons.school),
                    listProfile("2013", "SMPN 1 kluet Selatan",
                        FontAwesomeIcons.school),
                    listProfile("2016", "SMAN 1 Kluet Selatan",
                        FontAwesomeIcons.school),
                    listProfile("Present", "UIN Ar-Raniry Banda Aceh",
                        FontAwesomeIcons.university),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding listProfile(String title, String text, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 9),
      child: Card(
          elevation: 5,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  icon,
                  size: 40,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
