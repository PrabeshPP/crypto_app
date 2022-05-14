import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Stack(
        children:[ Container(
          height: double.infinity,
          width: size.width,
          color: const Color.fromARGB(255, 71, 101, 249),
        ),
        Positioned(
          top: size.height*0.12,
          left: size.width*0.1,
          child: SizedBox(
            height: size.height*0.4,
            width: size.width*0.8,
            child: Image.asset("assets/cr.png",
            fit: BoxFit.contain,),
          ),
         )
        ],
      ),
    );
  }
}
