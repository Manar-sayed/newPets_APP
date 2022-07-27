import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:pets/basis/wigdet.dart';
import '../appBar_Screens/aboutUs.dart';
import '../basis/colors.dart';
import '../basis/dropDown.dart';
import '../Log/login.dart';

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
          ),/////app bar
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width*.9,
            height: 1000,
            child: Stack(
              children:[
                const Positioned(
                    left: 120,
                    top: 460,
                    child: Image(image: AssetImage("assets/12.png"),width: 400,height: 400,)),
                const Positioned(
                    right: 10,
                    top: 20,
                    child: Image(image: AssetImage("assets/12.png"),width: 400,height: 400,)),
                Positioned(


                  child:Container(
                    width:  MediaQuery.of(context).size.width*.9,
                    height: 950,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bread",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.abel(
                                      color: HexColor.fromHex('#492F24'),
                                      fontSize: 20,
                                      wordSpacing: 1.4,
                                      fontWeight: FontWeight.bold),
                                ),
                                dropDown(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Age",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.abel(
                                      color: HexColor.fromHex('#492F24'),
                                      fontSize: 20,
                                      wordSpacing: 1.4,
                                      fontWeight: FontWeight.bold),
                                ),
                                dropDown(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Size",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.abel(
                                      color: HexColor.fromHex('#492F24'),
                                      fontSize: 20,
                                      wordSpacing: 1.4,
                                      fontWeight: FontWeight.bold),
                                ),
                                dropDown(),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good with",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.abel(
                                      color: HexColor.fromHex('#492F24'),
                                      fontSize: 20,
                                      wordSpacing: 1.4,
                                      fontWeight: FontWeight.bold),
                                ),
                                dropDown(),
                              ],
                            ),

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gender",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#492F24'),
                                        fontSize: 20,
                                        wordSpacing: 1.4,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  dropDown(),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Color",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#492F24'),
                                        fontSize: 20,
                                        wordSpacing: 1.4,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  dropDown(),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hear length",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#492F24'),
                                        fontSize: 20,
                                        wordSpacing: 1.4,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  dropDown(),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Care & behavior",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#492F24'),
                                        fontSize: 20,
                                        wordSpacing: 1.4,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  dropDown(),
                                ],
                              ),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            frindes_need_home("Caty", "assets/15.png"),
                            frindes_need_home("Elsa", "assets/elsa.png"),
                            frindes_need_home("Doby", "assets/doby.png"),
                          ],
                        ), //////need home
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            frindes_need_home("Caty", "assets/15.png"),
                            frindes_need_home("Elsa", "assets/elsa.png"),
                            frindes_need_home("Doby", "assets/doby.png"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Show more ...  ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.abel(
                              color: HexColor.fromHex('#492F24'),
                              fontSize: 38,
                              wordSpacing: 1.4,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  )
                ),
           ] ),
          ),



          //////need home

          bottonBar(),
        ]),
      ), //////app bar,
    );
  }
}
