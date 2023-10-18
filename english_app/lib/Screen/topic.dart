import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  Topic({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> itemList = [
    {'icon': 'assets/family.png', 'text': 'Family'},
    {'icon': 'assets/foods.png', 'text': 'Foods'},
    {'icon': 'assets/sports.png', 'text': 'Sports'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 68, 171, 255), // Màu nền xanh
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
              height: 150,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Topic',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10), 
                  Container(
                    width: 50,
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 20), 



                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: itemList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 40, right: 40, top: 30),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(itemList[index]['icon']),
                                width: 150,
                                height: 150,
                              ),
                              const SizedBox(width: 15),
                              Text(
                                itemList[index]['text'],
                                style: const TextStyle(
                                    fontSize: 40, color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
