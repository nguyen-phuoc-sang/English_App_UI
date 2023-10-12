import 'package:flutter/material.dart';

class WelcomApp extends StatelessWidget {
  WelcomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Sử dụng BoxDecoration để đặt màu nền
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Bắt đầu từ xanh nhạt
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 6, 149, 215),
            // Kết thúc ở xanh đậm hơn
            const Color.fromARGB(255, 0, 72, 131),
          ],
        ),
      ),
      child: Center(
        // Đặt logo ở giữa
        child: Image.asset('libs/Imgae/logo.png'),
      ),
    );
  }
}
