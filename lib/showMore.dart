import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'aboutUs.dart';
import 'colors.dart';

class showMore extends StatefulWidget {
  const showMore({Key? key}) : super(key: key);

  @override
  State<showMore> createState() => _showMoreState();
}

class _showMoreState extends State<showMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
          height:MediaQuery.of(context).size.height,
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
                      onPressed: () {},
                      child: Text(
                        'Request',
                        style:
                        GoogleFonts.abel(color: Colors.white, fontSize: 20),
                      )),
                  const SizedBox(width: 40,),
                  InkWell(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const signUp()),
                      // );
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Login()),
                      // );
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
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
            child: Container(

                decoration:
                BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [ BoxShadow(
                    color:HexColor.fromHex("#707070"),
                    spreadRadius: 250,
                    blurRadius: 100,

                    offset: Offset(0, 120), // changes position of shadow
                  ),]

                ),
                height: MediaQuery.of(context).size.height*.9,
                width: MediaQuery.of(context).size.width*.9,
                ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //       color: Colors.blueGrey.withOpacity(.9)),
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,),

          // Container(
          //   decoration: BoxDecoration(
          //       color: Colors.black.withOpacity(.9)),
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,),
     ] ),
      // body: Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //
      //   color: Colors.transparent,
      //   child: Stack(alignment: Alignment.center, children: <Widget>[
      //     Container(
      //         decoration:
      //         BoxDecoration( color: Colors.amber),
      //         height: 60,
      //         width: 60),
      //     Container(
      //         decoration: BoxDecoration(
      //             color: Colors.amber.withOpacity(.3)),
      //       height: MediaQuery.of(context).size.height,
      //       width: MediaQuery.of(context).size.width,),
      //   ]),
      // ),
    );
  }
}
