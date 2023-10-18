import 'package:english_app/Screen/hello2.dart';
import 'package:flutter/material.dart';

class HelloOne extends StatelessWidget {
  const HelloOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 200)),
              const Text(
                'Happy English',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'PasseroOne',
                  color: Color.fromARGB(255, 240, 189, 4),
                  fontStyle: FontStyle.italic,
                  
                ),
              ),
              const SizedBox(height: 160),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'When you are discouraged\n believe that the knowledge you learn\n will be meaningful in the future.',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fiber_manual_record, color: Colors.white, size: 15),
                  SizedBox(width: 20),
                  Icon(Icons.fiber_manual_record, color: Colors.white, size: 5),
                  SizedBox(width: 20),
                  Icon(Icons.fiber_manual_record, color: Colors.white, size: 5),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Hello2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 125, 185, 233),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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
