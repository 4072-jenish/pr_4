
import 'package:pr_4/Laptop.dart';

import 'package:flutter/material.dart';



class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text("Home Page ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.green,
        ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.shopping_cart,
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Color(0xffDFE3FC),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...allproducts
            .map(
              (e) =>  Container(
          child: 
               Column(
              children: [
                 Align(
                  alignment: Alignment.center,
               child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage("${e['id']}"),
                  ),
                ),
                ),
                Expanded(flex: 2,
                 child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      
                    ),   
                  ),
                 )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                                                                bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Take The better for You ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              " For Fevrite ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),)
          ],
        ),
      )
       
        );
      }
}