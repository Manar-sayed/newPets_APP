import 'package:flutter/material.dart';
import 'package:pets/aboutUs.dart';
import 'package:pets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pets/signUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

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
                    child:
                        const Image(image: AssetImage("assets/logo.png"))),

                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const aboutUs()),
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
                SizedBox(width: 40,),
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
                Container(
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
              ],
            ),
          ), ////app bar container
          Padding(
            padding: const EdgeInsets.only(bottom: 58),
            child: Container(
              width: 200,
              height: 100,
              child: Lottie.network(
                  "https://assets3.lottiefiles.com/packages/lf20_ykz7NB.json",
                  fit: BoxFit.cover),
            ),
          ),////animation
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: HexColor.fromHex('#56392D'), width: 2.5),
              borderRadius: BorderRadius.circular(20),
            ),
            width: 500,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('Login',
                    style: GoogleFonts.abel(
                        color: HexColor.fromHex('#492F24'), fontSize: 26,fontWeight: FontWeight.bold),

                ),
                SizedBox(height: 15,),
            Container(

              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
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
                child: TextFormField(
                  decoration:   InputDecoration(
                    hintText: "Enter Email",
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
            ),
            SizedBox(height: 15,),
            Container(

              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
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
                child: TextFormField(
                  decoration:   InputDecoration(
                    hintText: "Enter password",
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
            ),
            SizedBox(height: 60,),
            Container(

              width: 400,
              height: 60,
              decoration: BoxDecoration(
                color: HexColor.fromHex('#492F24'),
                borderRadius: BorderRadius.circular(25),

              ),
              child:  Center(
                child: Text('Login',
                  style: GoogleFonts.abel(
                      color: Colors.white, fontSize: 26,fontWeight: FontWeight.bold),

                ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 260,top: 20),
                  child: Text('forget password?',

                    style: GoogleFonts.abel(
                      color: HexColor.fromHex('#492F24'), fontSize: 16,),


                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 1.5,
                        width: 150,
                        color:HexColor.fromHex('#492F24') ,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('or',
                          style: GoogleFonts.abel(
                              color: HexColor.fromHex('#492F24'), fontSize: 20,),

                        ),
                      ),
                      Container(
                        height: 1.5,
                        width: 150,
                        color:HexColor.fromHex('#492F24') ,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      border: Border.all(
                          color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 170,
                    height: 45,
                    child:  Row(


                      children: const [
                        SizedBox(width: 20,),
                         Icon(Icons.facebook_outlined,color: Colors.white,),
                        SizedBox(width: 15,),
                            Text('Facebook',style: TextStyle(fontSize: 18,color: Colors.white),),

                      ],
                    ),
                  ),

                  Container(
                    width: 170,
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color:  HexColor.fromHex('#492F24'), width: 2.5),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child:  Row(


                      children:  [
                        SizedBox(width: 20,),
                        Icon(Icons.facebook_outlined,color: HexColor.fromHex('#492F24'),),
                        SizedBox(width: 15,),
                        Text('Google',style: TextStyle(color: HexColor.fromHex('#492F24'),fontSize: 18),),

                      ],
                    ),
                  ),

                ],),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 10),
                  child: Row(
                    children: [

                      Text('Didn`t have an account?',

                        style: GoogleFonts.abel(
                          color: HexColor.fromHex('#492F24'), fontSize: 14,),


                      ),
                      TextButton(onPressed: (){}, child:  Text('sign up',

                        style: GoogleFonts.abel(
                          color: HexColor.fromHex('#492F24'), fontSize: 16,fontWeight: FontWeight.bold),


                      ),)
                    ],
                  ),
                ),

              ],

            ),
          ),/////log in
          const SizedBox(
            height: 30,
          ),
          Container(
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
          ),////button bar
        ]),
      ),
    );
  }
}
