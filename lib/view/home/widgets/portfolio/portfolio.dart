import 'package:crypto_app/model/mybit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PortFolioWidget extends StatelessWidget {
  const PortFolioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Portfolio",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          portfolio(size)
        ],
      ),
    );
  }
}

Widget portfolio(Size size) {
  return Container(
    height: size.height * 0.3 * 0.6,
    width: size.width * 0.9,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: MyBitList.list.length,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        var data = MyBitList.list[index];
        return Container(
          margin: EdgeInsets.only(right: size.width * 0.05),
          width: size.width * 0.9 * 0.6,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 71, 101, 249),
              borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.name,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data.shortForm,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                      width: size.width * 0.07,
                      child: Image.asset(
                        data.icon,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.totalAmout,
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
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    ),
  );
}
