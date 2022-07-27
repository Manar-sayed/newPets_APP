import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:lottie/lottie.dart';
import 'package:pets/dog.dart';

import 'colors.dart';
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
Widget text_form(String Hint){
  return Container(

    width: 430,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: .3,
          blurRadius: 3,
          offset: const Offset(0, .6), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration:   InputDecoration(
            hintText: Hint,

            hintStyle:TextStyle(
                color: HexColor.fromHex('#492F24').withOpacity(.3),
                fontWeight: FontWeight.w600,
                letterSpacing: 1
            ) ,
            fillColor: Colors.white,
            border:  InputBorder.none
          //fillColor: Colors.green
        ),
      ),
    ),
  );
}

Widget frindes_need_home( String name,String img){
  return HoverAnimatedContainer(

    width: 220,
    height: 310,


    hoverDecoration: BoxDecoration(
      border: Border.all(width: 2,color: HexColor.fromHex('#492F24')),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [BoxShadow(
        color: HexColor.fromHex('#492F24').withOpacity(.5),
        spreadRadius: 7,
        blurRadius: 9,
        offset: const Offset(0, 3),
      ),],
      color: Colors.white,




    ),

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(width: 2,color: HexColor.fromHex('#492F24')),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
        Image(image: AssetImage(img,),height: 200,width: 400,),

        Text(name,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontSize: 30,fontWeight: FontWeight.w600),),
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: HexColor.fromHex('#FFE3C5'), width: 2.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Center(
              child: Text(
                'Read more',
                style: TextStyle(color: HexColor.fromHex('#492F24'),fontWeight: FontWeight.w600),
              )),
          width: 160,
          height: 40,
        ),
        SizedBox(height: 15,),
      ],
    ),
  );
}

Widget takeCare(String img,String txt){
  return  Column(


    children: [
      Stack(
          children:  [
            Container(

              width:200,
              height: 260,
              decoration: BoxDecoration(

                color:Colors.transparent,
              ),
            ),

            Positioned(
              top: 50,
              child: Container(

                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor.fromHex('#492F24'),
                ),
              ),
            ),


             Positioned(
              right: 67,
              bottom: 140,
              child: Image(image: AssetImage(img),width: 100,height: 100,
              ),
            ),
            Positioned(
              right: 85,
              bottom: 70,
              child :Text(txt, textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#FFE3C5'),fontWeight: FontWeight.w500,fontSize: 20),),

            ),

          ]
      ),
    ],
  );
}
Widget bottonBar(){
  return Container(
    height: 180,
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
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(

        children: [

          Lottie.network('https://assets2.lottiefiles.com/packages/lf20_StfcYQ.json'),
          const SizedBox(width: 140,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('For any questions',
                      style: GoogleFonts.abel(
                          color: HexColor.fromHex('#FFE3C5'), fontSize: 26,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: .7))),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.email,color: HexColor.fromHex('#AE957B'),size: 25,),
                    TextButton(
                        onPressed: () {},
                        child: Text('Email@petology.com',
                            style: GoogleFonts.abel(
                                color:HexColor.fromHex('#AE957B'), fontSize: 20))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.phone,color: HexColor.fromHex('#AE957B'),size: 25,),
                    TextButton(
                        onPressed: () {},
                        child: Text('(+2)0123456789',
                            style: GoogleFonts.abel(
                              color: HexColor.fromHex('#AE957B'), fontSize: 20,))),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 90,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('We are waiting you',
                      style: GoogleFonts.abel(
                          color: HexColor.fromHex('#FFE3C5'),fontSize: 26,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: .7))),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: HexColor.fromHex('#AE957B'), size: 25,),
                    TextButton(
                        onPressed: () {},
                        child: Text('First settlement/Cairo',
                            style: GoogleFonts.abel(
                              color: HexColor.fromHex('#AE957B'), fontSize: 20,))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on,color: HexColor.fromHex('#AE957B'), size: 25,),
                    TextButton(
                        onPressed: () {},
                        child: Text('Cairo/Egypt',
                            style: GoogleFonts.abel(
                              color: HexColor.fromHex('#AE957B'), fontSize: 20,))),
                  ],
                ),
              ),
            ],
          ), /////title
          const Expanded(child: SizedBox()),
          const Image(image: AssetImage("assets/11.png")),
        ],
      ),
    ),
  );
}
Widget textField(String hint, Icon icon){
  return Container(

    width: 430,

    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: .3,
          blurRadius: 3,
          offset: const Offset(0, .6), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(

        decoration:  InputDecoration(

          suffixIcon: icon,
          hintText: hint,
          hintStyle:TextStyle(
              color: HexColor.fromHex('#492F24').withOpacity(.3),
              fontWeight: FontWeight.w600,
              letterSpacing: 1
          ) ,
          border: InputBorder.none,
          fillColor: Colors.white,


        ),

      ),
    ),
  );
}
Widget rowTexField (String hint, Icon icon,String hint1, Icon icon1){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(

          width: 190,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: .3,
                blurRadius: 3,
                offset: const Offset(0, .6), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(

              decoration:  InputDecoration(

                suffixIcon: icon,
                hintText: hint,
                hintStyle:TextStyle(
                    color: HexColor.fromHex('#492F24').withOpacity(.3),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1
                ) ,
                border: InputBorder.none,
                fillColor: Colors.white,


              ),

            ),
          ),
        ),
        SizedBox(width: 50,),
        Container(

          width: 190,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: .3,
                blurRadius: 3,
                offset: const Offset(0, .6), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(

              decoration:  InputDecoration(

                suffixIcon: icon1,
                hintText: hint1,
                hintStyle:TextStyle(
                    color: HexColor.fromHex('#492F24').withOpacity(.3),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1
                ) ,
                border: InputBorder.none,
                fillColor: Colors.white,


              ),

            ),
          ),
        ),
      ],
    ),
  );
}
// Widget dropDown (){
//   return  DropdownButtonHideUnderline(
//     child: DropdownButton2(
//       isExpanded: true,
//       hint: Row(
//         children:  [
//
//           SizedBox(
//             width: 4,
//           ),
//
//         ],
//       ),
//       items: items
//           .map((item) => DropdownMenuItem<String>(
//         value: item,
//         child: Text(
//           item,
//           style: const TextStyle(
//             fontSize: 14,
//             fontWeight: FontWeight.bold,
//             color: Colors.grey,
//           ),
//           overflow: TextOverflow.ellipsis,
//         ),
//       ))
//           .toList(),
//       value: selectedValue,
//       onChanged: (value) {
//         setState(() {
//           selectedValue = value as String;
//         });
//       },
//       icon: const Icon(
//         Icons.arrow_drop_down_sharp,
//       ),
//       iconSize: 30,
//       iconEnabledColor: HexColor.fromHex("#FFE3C5"),
//       iconDisabledColor: HexColor.fromHex("#FFF1E2"),
//       buttonHeight: 50,
//       buttonWidth: 160,
//       buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//       buttonDecoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(14),
//         border: Border.all(
//           color: Colors.black26,
//         ),
//         color: Colors.transparent,
//       ),
//       buttonElevation: 0,
//       itemHeight: 40,
//       itemPadding: const EdgeInsets.only(left: 14, right: 14),
//       dropdownMaxHeight: 200,
//       dropdownWidth: 200,
//       dropdownPadding: null,
//       dropdownDecoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(14),
//         color: HexColor.fromHex("#FFF1E2"),
//       ),
//       dropdownElevation: 8,
//       scrollbarRadius: const Radius.circular(40),
//       scrollbarThickness: 6,
//       scrollbarAlwaysShow: true,
//       offset: const Offset(0, 0),
//     ),
//   );
// }
//
// void setState(Null Function() param0) {
// }