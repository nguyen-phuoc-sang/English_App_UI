import 'package:flutter/material.dart';

class Remind extends StatefulWidget {
  const Remind({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RemindState createState() => _RemindState();
}

class _RemindState extends State<Remind> {
  int selectedHours = 1;
  int selectedMinute = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: 100,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Reminder',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 50,
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<int>(
                        value: selectedHours,
                        onChanged: (int? value) {
                          setState(() {
                            selectedHours = value!;
                          });
                        },
                        items: List.generate(24, (index) {
                          return DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          );
                        }),
                      ),
                      const SizedBox(width: 10),
                      const Text('H      :      '),
                      DropdownButton<int>(
                        value: selectedMinute,
                        onChanged: (int? value) {
                          setState(() {
                            selectedMinute = value!;
                          });
                        },
                        items: List.generate(60, (index) {
                          return DropdownMenuItem<int>(
                            value: index + 1,
                            child: Text((index + 1).toString()),
                          );
                        }),
                      ),
                      const SizedBox(width: 10),
                      const Text('M'),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Notification name',
                        contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: const TextStyle(fontSize: 25),
                      ),
                      maxLines: 4,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 150,
                    height: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // xử lí nút save
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 196, 215, 231),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: const BorderSide(width: 2, color: Colors.black),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
