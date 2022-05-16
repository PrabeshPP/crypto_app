import 'package:crypto_app/view/home/widgets/last_Seen/lastSeen.dart';
import 'package:flutter/material.dart';

import 'package:crypto_app/view/home/widgets/portfolio/portfolio.dart';
import 'package:crypto_app/view/home/widgets/card/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: heading(context, size),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            body(const BalanceCard(), size),
            body(const PortFolioWidget(), size),
            Padding(
              padding:  EdgeInsets.only(left: size.width*0.05),
              child: Text("Last Seen",
              style: Theme.of(context).textTheme.titleLarge,),
            ),
            const LastSeen()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(

        shape: const CircularNotchedRectangle(

        ),
        
        notchMargin: 5.0,
        child: SizedBox(
          height: size.height * 0.1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: size.height * 0.03,
                    ),
                  ),
                  Text(
                    "Home",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.line_axis,
                      size: size.height * 0.03,
                    ),
                  ),
                  Text(
                    "Market",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: size.height * 0.03,
                    ),
                  ),
                  Text(
                    "notifications",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      size: size.height * 0.03,
                    ),
                  ),
                  Text(
                    "settings",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget heading(BuildContext context, Size size) {
  return Padding(
    padding: EdgeInsets.only(top: size.height * 0.01, left: size.width * 0.05),
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

Widget body(Widget widgetChild, Size size) {
  return Padding(
    padding: EdgeInsets.only(top: size.height * 0.02, left: size.width * 0.05),
    child: widgetChild,
  );
}
