import 'package:flutter/material.dart';


class PortFolioWidget extends StatelessWidget {
  const PortFolioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      color: Colors.red,
      height:size.height*0.3 ,
      width: size.width*0.9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Portfolio",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              TextButton(onPressed: (){

              }, child: Text("View all",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold
                
              ),),)
              
            ],
          )
        ],
      ),
    );
  }
}
