// ignore: file_names

import 'package:crypto_app/model/mybit.dart';
import 'package:flutter/material.dart';

class LastSeen extends StatelessWidget {
  const LastSeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: MyBitList.list.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) {
        var data = MyBitList.list[index];
        return Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.02,
              left: size.width * 0.05,
              right: size.width * 0.05),
          child: Container(
            height: size.height * 0.1,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 71, 101, 249),
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  data.icon,
                  height: size.height * 0.1 * 0.8,
                  width: size.width * 0.1,
                  fit: BoxFit.contain,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.shortForm,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.price,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          data.percentage,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
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
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
