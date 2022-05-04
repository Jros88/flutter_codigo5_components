import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Card Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Card 1
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0),
                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(28.0,),
                  // topRight: Radius.circular(28.0,),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 1,
                      offset: const Offset(4, 4),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 5,
                      offset: Offset(-5, -5),
                    ),
                  ]),
              child: Column(
                children: [
                  Text(
                    'Veniam eu cupidatat adipisicing Lorem anim ullamco nostrud tempor exercitation labore laborum. Dolor eiusmod aliqua ullamco non incididunt nulla labore esse ut occaecat. Sit ut nulla elit duis sunt.',
                    maxLines: 100,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.60),
                      fontSize: 14.0,
                      height: 1.3,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 6.0),

                    width: double.infinity,
                    //height: 54.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 124, 63, 255),
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.4),
                            blurRadius: 12,
                            offset: const Offset(4, 4),
                          )
                        ]),

                    child: Text(
                      'Follow me',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Card 2
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
                    'assets/images/item1.png',
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

            // Card 3
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 12,
                        color: Colors.black.withOpacity(0.06),
                        offset: const Offset(4, 4)),
                  ]),
              child: Row(
                children: [
                  // Container(
                  //   height: 130.0,
                  //   width: 130.0,
                  //   decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: NetworkImage(
                  //           'https://images.news18.com/ibnlive/uploads/2021/06/1623931764_untitled-design-2.jpg?impolicy=website&width=510&height=356'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      'https://images.news18.com/ibnlive/uploads/2021/06/1623931764_untitled-design-2.jpg?impolicy=website&width=510&height=356',
                      width: 130.0,
                      height: 130.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Amet dolor ad consequat ea ad excepteur irure laborum veniam officia. Deserunt culpa non aliquip cillum incididunt cupidatat amet ipsum mollit nisi ad. Eu fugiat magna esse consequat esse proident cillum. Laborum consectetur adipisicing officia eiusmod voluptate in ut labore culpa.',
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Card 4
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 16.0),
              margin:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: const Offset(4, 4),
                      blurRadius: 12,
                    )
                  ]),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  ),
                  const SizedBox(
                    width: 14.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3d4a81),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Ceo at Apple Inc',
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3d4a81),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 9.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      color: Color(0xffdce5ff),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 15.0,
                          color: Color(0xff4d7cff),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'Settings',
                          style: GoogleFonts.montserrat(
                            color: Color(0xff4d7cff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Card 5
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                    ),
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color(0xffB8CBFF),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.volume_down_sharp,
                      color: Color(0xff386CFF),
                      size: 28.0,
                    ),
                  ),
                  const SizedBox(
                    width: 14.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The quick, brown fox jumps over",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff2C3A77),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation",
                          maxLines: 2,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff2C3A77),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
