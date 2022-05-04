import 'package:flutter/material.dart';

class CardPage3 extends StatelessWidget {
  const CardPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            color: Color.fromARGB(255, 235, 235, 235),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.drag_handle,
                  color: Color(0xff3D4763),
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Color(0xff3D4763),
                ),
              ],
            ),
          ),
          Container(
            // height: 350,
            // width: 400,
            // color: Color.fromARGB(255, 235, 235, 235),
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            color: Color.fromARGB(255, 235, 235, 235),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8C9AC4),
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Dr. Paterson',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2E3754),
                    fontSize: 33,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
