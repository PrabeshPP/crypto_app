
import 'package:flutter/material.dart';

import 'package:crypto_app/view/home/widgets/portfolio/portfolio.dart';
import 'package:crypto_app/view/home/widgets/card/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading(context, size),
                body(const BalanceCard(), size),
                body(const PortFolioWidget(), size)
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget heading(BuildContext context, Size size) {
  return Padding(
    padding: EdgeInsets.only(
        top: size.height * 0.01, left: size.width * 0.05),
    child: SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Prabesh Bista",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            "Welcome back 👋",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    ),
  );
}

Widget body(Widget widgetChild,Size size) {
  return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.02, left: size.width * 0.05),
          child: widgetChild,);
}
