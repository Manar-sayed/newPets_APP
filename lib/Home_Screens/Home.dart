import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/Home_Screens/dobyInfo.dart';
import 'package:pets/appBar_Screens/aboutUs.dart';
import 'package:pets/Log/signUp.dart';
import 'package:hovering/hovering.dart';
import 'package:pets/basis/wigdet.dart';
import 'package:pets/appBar_Screens/request.dart';
import 'package:pets/Home_Screens/feedYourDog.dart';
import '../basis/colors.dart';
import 'dog.dart';
import '../Log/login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool isHovered =false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 60,
                          width: 140,
                          child:
                          const Image(image: AssetImage("assets/logo.png"))),

                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const aboutUs()),
                            );
                          },
                          child: Text('About us',
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const request()),
                            );
                          },
                          child: Text(
                            'Request',
                            style:
                            GoogleFonts.abel(color: Colors.white, fontSize: 20),
                          )),
                      const SizedBox(width: 40,),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const signUp()),
                          );
                        },
                        child: Container(
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
                      ),
                      InkWell(
                        onTap: (){
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
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         Text("Not only people\n need a house",style: GoogleFonts.abel(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w600),),
                     const SizedBox(height: 6,),
                         const Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, \nsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat\n, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\n Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. \nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.",style: TextStyle(color: Colors.white),),

                            const SizedBox(height: 15,),
                         InkWell(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const aboutUs()),
                             );
                           },
                           child: Container(

                             width: 200,
                             height: 45,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(25),

                             ),
                             child:  Center(
                               child: Text('help theme',
                                 style: GoogleFonts.abel(
                                     color: HexColor.fromHex('#492F24'), fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 1),

                               ),
                             ),
                           ),
                         ),///button


                       ],
                      ),
                      Column(


                          children: [
                            Stack(
                                children:  [


                                  const Image(image: AssetImage("assets/13.png"),width: 400,height: 300,
                                  ),

                                  Positioned(top: 180,
                                    left: 115,
                                    child: Container(
                                      width: 190,
                                      height: 60,
                                      decoration:   BoxDecoration(



                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(.8),
                                            spreadRadius: 5,
                                            blurRadius: 20,
                                            offset: const Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(90),

                                      ),
                                    ),
                                  ),
                                  const Positioned(
left: 60,
                                    bottom: 60,
                                    child: Image(image: AssetImage("assets/14.png"),width: 300,height: 300,
                                    ),
                                  ),

                                ]
                            ),
                          ],
      ),
                ]
                  ),
                ]
              ),
            ),//////App bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(


                  children: [
                    const SizedBox(height: 30,),
                    Stack(
                        children:  [
Container(
  width: 400,height:320,
),



                          Positioned(top: 160,
                            left: 115,
                            child: Container(
                              width: 190,
                              height: 60,
                              decoration:   BoxDecoration(



                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.8),
                                    spreadRadius: 5,
                                    blurRadius: 20,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(90),

                              ),
                            ),
                          ),

                          const Positioned(
                            left: 100,
                            bottom: 90,
                            child: Image(image: AssetImage("assets/15.png"),width: 200,height: 200,
                            ),
                          ),
                          const Positioned(
                            left: 60,
                            bottom: 50,
                            child: Image(image: AssetImage("assets/16.png"),width: 350,height: 350,
                            ),
                          ),

                        ]
                    ),
                  ],
                ),

                Column(


                  children: [
                    const SizedBox(height: 30,),
                    Stack(
                        children:  [
Container(
  width: 500,height:240,
),





                          const Positioned(
                            left: 250,
                            bottom: 10,
                            child: Image(image: AssetImage("assets/12.png"),width: 250,height: 250,
                            ),
                          ),
                          const Positioned(
                            left: 60,
                            bottom: 50,
                            child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt \nut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, \nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata sanctus \nest Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum\n. Stet clita kasd gubergren, no sea."),
                          ),

                        ]
                    ),
                  ],
                ),
                const SizedBox(width: 10,),


              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: HexColor.fromHex('#F1F1F1'),
              child: Stack(
                children:  [
                   const Positioned(
                      left: 700,
child:  RotationTransition(
    child: Image(image: AssetImage("assets/12.png"),width: 110,height: 110,),

    turns: AlwaysStoppedAnimation(75/360)

),
                           ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 15),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text("Lets get this right ....", textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontWeight: FontWeight.bold,fontSize: 44),),
                         const SizedBox(height: 15,),
                         Text("What kind of friend you looking for?", textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontSize: 40),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             InkWell(
                               onTap: (){
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const dog()),
                                 );
                               },
                               child: Container(
                                 child: const Image(image: AssetImage('assets/dog.png')),

                                 width: 200,
                                 height: 200,
                                 decoration: BoxDecoration(
                                   border: Border.all(width: 2,color: HexColor.fromHex('#492F24')),
                                   borderRadius: BorderRadius.circular(20),
                                   color: HexColor.fromHex('#FFE3C5'),
                                 ),
                               ),
                             ),
                             const SizedBox(width: 60,),
                             HoverAnimatedContainer(
                               width: 200,
                               height: 200,
                               child: const Image(image: AssetImage('assets/cat.png')),

                               hoverDecoration: BoxDecoration(
                                 border: Border.all(width: 2,color: HexColor.fromHex('#492F24')),
                                 borderRadius: BorderRadius.circular(20),
                                 color: HexColor.fromHex('#FFE3C5'),

                               ),

                               decoration: BoxDecoration(

                                   borderRadius: BorderRadius.circular(20),
                                   border: Border.all(color: Colors.black26)
                               ),
                             ),
                           ],
                         ),

                       ],
                     ),
                   ),

                ],
              ),
            ), ////Dog or cat
            Text(" Our friends who\n  looking for a house   ", textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontSize: 42,wordSpacing: 1.4),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                frindes_need_home("Caty","assets/15.png"),
                frindes_need_home("Elsa","assets/elsa.png"),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const dobyInfo()),
                    );
                  },
                    child: frindes_need_home("Doby","assets/doby.png")),
              ],
            ),//////need home
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const aboutUs()),
                );
              },
              child: Container(

                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  color:  HexColor.fromHex('#492F24'),
                  borderRadius: BorderRadius.circular(25),

                ),
                child:  Center(
                  child: Text('show more',
                    style: GoogleFonts.abel(
                        color:Colors.white, fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 1),

                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 650,
              color: HexColor.fromHex('#F1F1F1'),
              child: Stack(
                children:  [
                  const Positioned(
                    left: 700,
                    child:  RotationTransition(
                        child: Image(image: AssetImage("assets/12.png"),width: 110,height: 110,),

                        turns: AlwaysStoppedAnimation(75/360)

                    ),
                  ),
                  Column(

                    children: [
                      Text("How to take care of \n your friends?", textAlign: TextAlign.center,style: GoogleFonts.abel(color: HexColor.fromHex('#492F24'),fontWeight: FontWeight.bold,fontSize: 44),),
                      const SizedBox(height: 15,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [

                          InkWell(


                              child: takeCare("assets/food.png", "pet food"),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const feedDog()),
                              );
                            },
                          ),
                          takeCare("assets/transportation.png", "transport"),
                          takeCare("assets/toys.png", "toys        "),
                          takeCare("assets/bowl.png", "Bowls&\n cups"),


                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 150),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [

                          takeCare("assets/Inoculation.png", " Inoculation"),
                          takeCare("assets/bed.png", "sleeping\narea"),
                          takeCare("assets/vitamins.png", "vitamins"),



                         ],
                       ),
                     ),

                    ],
                  ),
                ],
              ),
            ),
            bottonBar(),

          ],
        ),
      ),
    );
  }
}
