import 'package:crypto_app/view/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        children: [
          Container(
            height: double.infinity,
            width: size.width,
            color: const Color.fromARGB(255, 71, 101, 249),
          ),
          Positioned(
            top: size.height * 0.12,
            left: size.width * 0.1,
            child: SizedBox(
              height: size.height * 0.4,
              width: size.width * 0.8,
              child: Image.asset(
                "assets/cr.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
              top: size.height * 0.58,
              left: size.width * 0.05,
              child: SizedBox(
                  height: size.height * 0.3,
                  width: size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.3 * 0.4,
                        width: size.width * 0.5,
                        child: Text(
                          "Easy Way to Invest in crypto",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.3 * 0.2,
                        width: size.width * 0.8,
                        child: Text(
                          "A new way to manage and trade all your crypto easily and fastest in the market",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          height: size.height * 0.3 * 0.25,
                          width: size.width * 0.16,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.forward,
                              color: const Color.fromARGB(255, 71, 101, 249),
                              size: size.height * 0.05,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
