import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reubro_test/view/reusable_widgets/date_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // base blue color
            Container(
              height: size.height,
              width: size.width,
              color: Colors.blue,
            ),
            Column(
              children: [
                // top white structure
                Stack(
                 children:[
                   Container(
                    height: size.height * 0.4,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(45)),
                    ),
                    
                  ),
                  // top right blue
                  Positioned(
                    right: 0,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50)
                        )
                          ),
                        ),
                        // Stack(
                        // children:[
                        //   Container(
                        //     width: 80,
                        //     height: 20,
                        //     decoration: const BoxDecoration(
                        //   color: Colors.white
                        //     ),
                        //   ),
                        //   Positioned(
                        //     right: 0,
                        //     child: Container(
                        //       height: 5,
                        //       width: 2,
                        //       decoration: const BoxDecoration(
                        //         borderRadius: BorderRadius.only(
                        //           bottomLeft: Radius.circular(500)
                        //         ),
                          
                        //         color: Colors.blue,
                          
                          
                        //       ),
                        //     ),
                        //   )
                        // ] 
                        // )
                        
                      ],
                    ),
                  )
                 ]
                ),

                // base blue structure
                Stack(
                  children: [
                    Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                        return DateCard();
                      }),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(45)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
