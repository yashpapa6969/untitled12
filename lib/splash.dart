import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled12/home.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        fontFamily: ('FututraBold'),
        primarySwatch: Colors.green,
      ),
      home: const Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  _Splash2 createState() => _Splash2();
}

class _Splash2 extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    const Color black = Color(0xFF000000);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.light,
      //set brightness for icons, like dark background light icons
    ));
    return Scaffold(
      body: Lottie.asset(
        'assets/space_jam.zip',
        width: 400,
        height: 900,
        fit: BoxFit.fill,
      )


        );
  }
}

//  MultiProvider(
//               providers: [
//                 ChangeNotifierProvider.value(
//                   value: Auth(),
//                 ),
//               ],
//               child: Consumer<Auth>(
//                 builder: (ctx, auth, _) => MaterialApp(
//                   title: 'MyShop',
//                   theme: ThemeData(
//                     primarySwatch: Colors.blue,
//                     fontFamily: 'Poppins',
//                   ),
//                   home: auth.isAuth
//                       ? const HomePage()
//                       : FutureBuilder(
//                           future: auth.tryAutoLogin(),
//                           builder: (ctx, authResultSnapshot) =>
//                               authResultSnapshot.connectionState ==
//                                       ConnectionState.waiting
//                                   ? const SplashScreen()
//                                   : const Login(),
//                         ),
//                 ),
//               ),
            
            
            
//             )
