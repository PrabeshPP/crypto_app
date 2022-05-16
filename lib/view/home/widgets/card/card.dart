// ignore: file_names

import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipBehavior: Clip.antiAlias,
      clipper: ClipPathClass(),
      child: Container(
        height: size.height * 0.38,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 71, 101, 249),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),

                child: SizedBox.fromSize(
                  size: Size.fromRadius(size.width*0.08),
                  child: Image.asset(
                    "assets/pp.png",
                    fit: BoxFit.cover,
                   
                  ),
                ),
              ),
            ),
            Text(
              "Current Balance",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$143,421.20",
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Weekly Profit",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.02),
                  child: Container(
                    constraints: BoxConstraints(
                        minHeight: size.height * 0.05,
                        minWidth: size.width * 0.3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color.fromARGB(82, 203, 203, 203),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "15.6%",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: const Color.fromARGB(255, 0, 255, 8),
                          size: size.height * 0.02,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(-size.width * 0.16, size.height);
    Offset firstControlPoint = Offset(size.width / 2, size.height * 0.8);
    Offset firstEndPoint = Offset(size.width * 1.16, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
