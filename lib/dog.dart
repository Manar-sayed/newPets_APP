import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:pets/wigdet.dart';
import 'aboutUs.dart';
import 'colors.dart';
import 'login.dart';

class dog extends StatefulWidget {
  const dog({Key? key}) : super(key: key);

  @override
  State<dog> createState() => _dogState();
}

class _dogState extends State<dog> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  HexColor.fromHex('#110B09'),
                  HexColor.fromHex('#31211A'),
                  HexColor.fromHex('#56392D'),
                  HexColor.fromHex('#9B7F73'),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 60,
                    width: 140,
                    child: const Image(image: AssetImage("assets/logo.png"))),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const aboutUs()),
                      );
                    },
                    child: Text('About Us',
                        style: GoogleFonts.abel(
                            color: Colors.white, fontSize: 20))),
                TextButton(
                    onPressed: () {},
                    child: Text('Categories',
                        style: GoogleFonts.abel(
                            color: Colors.white, fontSize: 20))),
                TextButton(
                    onPressed: () {},
                    child: Text('Services',
                        style: GoogleFonts.abel(
                            color: Colors.white, fontSize: 20))),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Request',
                      style:
                          GoogleFonts.abel(color: Colors.white, fontSize: 20),
                    )),
                SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: HexColor.fromHex('#FFE3C5'), width: 2.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  )),
                  width: 100,
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor.fromHex('#FFFFFF').withOpacity(.99),
                      border: Border.all(
                          color: HexColor.fromHex('#FFE3C5'), width: 2.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text('Login')),
                    width: 100,
                    height: 40,
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bread", textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontSize: 20,wordSpacing: 1.4,fontWeight: FontWeight.bold),),
SizedBox(height: 5,),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_sharp,
                  ),
                  iconSize: 30,
                  iconEnabledColor: HexColor.fromHex("#FFE3C5"),
                  iconDisabledColor: HexColor.fromHex("#FFF1E2"),
                  buttonHeight: 50,
                  buttonWidth: 160,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.transparent,
                  ),
                  buttonElevation: 0,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 200,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: HexColor.fromHex("#FFF1E2"),
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                  offset: const Offset(0, 0),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              frindes_need_home("Caty", "assets/15.png"),
              frindes_need_home("Elsa", "assets/elsa.png"),
              frindes_need_home("Doby", "assets/doby.png"),
            ],
          ), //////need home
SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              frindes_need_home("Caty", "assets/15.png"),
              frindes_need_home("Elsa", "assets/elsa.png"),
              frindes_need_home("Doby", "assets/doby.png"),
            ],
          ),
          SizedBox(height: 20,),
        Text("Show more ...  ", textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontSize: 38,wordSpacing: 1.4,fontWeight: FontWeight.bold),),
         //////need home
          SizedBox(height: 20,),
          bottonBar(),
        ]),
      ), //////app bar,
    );
  }
}
