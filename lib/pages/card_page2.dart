import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage2 extends StatelessWidget {
  const CardPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Card Page 2'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 12.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  )
                ]),
            //color: Color.fromARGB(255, 199, 237, 255),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/item3.png',
                  height: 120.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Firella Guadalupe De las Nieves Azules',
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        'Laboris reprehenderit labore esse est amet duis eiusmod ex id magna ullamco proident laborum Lorem. Consequat minim sint aute dolor culpa. Enim culpa sint fugiat culpa est labore proident dolor tempor nisi qui.',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
