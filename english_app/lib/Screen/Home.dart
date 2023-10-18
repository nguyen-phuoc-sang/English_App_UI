import 'package:english_app/Screen/login.dart';
import 'package:flutter/material.dart';
import 'package:english_app/Screen/profile.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> itemList = [
    {'icon': 'assets/avatar.png', 'text': 'Chemistry'},
    {'icon': 'assets/avatar.png', 'text': 'Nation'},
    {'icon': 'assets/avatar.png', 'text': 'Universe'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Builder(
          builder: (context) => Column(
            children: [
              Container(
                height: 100,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                    const Text(
                      'Hello Sang',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()),
                        );
                      },
                      child:
                          const Image(image: AssetImage('assets/avatar.png')),
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                height: 180,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LANGUAGE',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Image(
                          image: AssetImage('assets/imgHome.png'),
                          width: 125,
                          height: 125,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'NURTURING THE FUTURE',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 2,
                    height: 20,
                    color: Colors.lightBlue,
                    margin: const EdgeInsets.only(left: 20, right: 10),
                  ),
                  const Text(
                    'Topic',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 25),
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 230, 230),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(itemList[index]['icon']),
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            itemList[index]['text'],
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 2,
                    height: 20,
                    color: Colors.lightBlue,
                    margin: const EdgeInsets.only(left: 20, right: 10),
                  ),
                  const Text(
                    'Popular Topic',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 25),
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(itemList[index]['icon']),
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            itemList[index]['text'],
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
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

        // drawer
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/IT.png', // Thay đổi đường dẫn hình ảnh
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Nguyen Phuoc Sang',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.exit_to_app, color: Colors.black,),
                        title: const Text('Log Out', style: TextStyle(fontSize: 20),),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const Login()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
