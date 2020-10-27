import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/schools_list.dart';
import 'package:absensi_sekolah/components/rounded_button.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Absensi Siswa",
            style: TextStyle(
              fontSize: 32,
              color: primaryColor,
              fontFamily: "Poppins-Bold",
            ),
          ),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: whiteColor,
        ),
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.35,
                child: Image.asset(
                  "assets/images/data.png",
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                "Ayo kelola kehadiran kamu!",
                style: TextStyle(
                  fontSize: 22,
                  color: blackColor,
                  fontFamily: "Poppins-SemiBold",
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text(
                "Lebih mudah dan efesien mengelola \nkehadiran kamu di sekolah.",
                style: TextStyle(
                  fontSize: 14,
                  color: blackColor,
                  fontFamily: "Poppins-Regular",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              RoundedButton(
                onPress: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return SchoolsList();
                  }));
                },
                text: "Lanjut",
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Column(
                children: [
                  Text(
                    "Dengan menggunakan aplikasi ini, kamu",
                    style: TextStyle(
                      fontSize: 12,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "menyetujui ",
                          style: TextStyle(
                            fontSize: 12,
                            color: blackColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        Text(
                          "Ketentuan Layanan ",
                          style: TextStyle(
                            fontSize: 12,
                            color: darkColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        Text(
                          "dan ",
                          style: TextStyle(
                            fontSize: 12,
                            color: blackColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                        Text(
                          "Ketentuan Privasi.",
                          style: TextStyle(
                            fontSize: 12,
                            color: darkColor,
                            fontFamily: "Poppins-Regular",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
