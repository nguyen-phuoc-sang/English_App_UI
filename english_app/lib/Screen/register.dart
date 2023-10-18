import 'package:english_app/Screen/login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 6, 149, 215),
                Color.fromARGB(255, 39, 33, 189),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Happy English',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'PasseroOne',
                        color: Color.fromARGB(255, 240, 189, 4),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 50),
                  ],
                ),
              ),

              // chữ sign in
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // khung trắng
              const SizedBox(height: 20),
              Container(
                width: screenWidth,
                height: 620,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),

                // welcom và hello
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 52, 2, 248),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Hello there, fill in below to create an account',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    // vùng nhập email và password
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Row(
                        children: [
                          Icon(Icons.email, color: Colors.blue, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 52, 2, 248),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Row(
                        children: [
                          Icon(Icons.password, color: Colors.blue, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 52, 2, 248),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Row(
                        children: [
                          Icon(Icons.person_2, color: Colors.blue, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 52, 2, 248),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Row(
                        children: [
                          Icon(Icons.phone, color: Colors.blue, size: 20),
                          SizedBox(width: 10),
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 52, 2, 248),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your phone number',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                        ),
                      ),
                    ),
                    
                    // nút sign in
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            // Xử lý sự kiện khi nút Sign In được nhấn
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 203, 147, 204),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // dòng cho sign up
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "I’m already a member",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: Color.fromARGB(255, 5, 112, 200),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
