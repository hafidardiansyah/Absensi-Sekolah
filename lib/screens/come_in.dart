import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/rounded_filter_button.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';

class ComeIn extends StatefulWidget {
  @override
  _ComeInState createState() => _ComeInState();
}

class _ComeInState extends State<ComeIn> {
  List<String> countList = [
    "Agustus",
    "Juli",
  ];
  List<String> selectedCountList = [];

  void _openFilterDialog() async {
    await FilterListDialog.display(context,
        allTextList: countList,
        height: 280,
        borderRadius: 30,
        headlineText: "Bulan",
        searchFieldHintText: "Cari",
        hideSelectedTextCount: true,
        hideSearchField: true,
        selectedTextList: selectedCountList, onApplyButtonClick: (list) {
      if (list != null) {
        setState(() {
          selectedCountList = List.from(list);
        });
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int number = 25;

    return Stack(children: [
      Column(
        children: <Widget>[
          SizedBox(height: 55),
          selectedCountList == null || selectedCountList.length == 0
              ? Expanded(
                  child: Center(
                    child: Text('No text selected'),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: RoundedSelectionButton(
                            allSize: 17,
                            desc: selectedCountList[index],
                            icon: Icons.location_history,
                            onTap: () {},
                            title: selectedCountList[index],
                          ),
                        );
                      },
                      itemCount: selectedCountList.length),
                ),
        ],
      ),
      Container(
        height: 60,
        color: whiteColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(children: [
              Text("Masuk ",
                  style: TextStyle(
                    fontSize: 18,
                    color: blackColor,
                    fontFamily: "Poppins-Medium",
                  )),
              Text(number.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                    fontFamily: "Poppins-SemiBold",
                  )),
              Text(" x",
                  style: TextStyle(
                    fontSize: 18,
                    color: blackColor,
                    fontFamily: "Poppins-Medium",
                  )),
            ])),
            RoundedFilterButton(
              allSize: 16,
              onTap: _openFilterDialog,
            ),
          ],
        ),
      ),
    ]);
  }
}
