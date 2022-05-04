import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Avatar Page',
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'F',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://aplisac.com/wp-content/uploads/2019/01/person2.jpg'),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: const [
          FadeInImage(
              fadeInDuration: Duration(milliseconds: 2000),
              placeholder: AssetImage('assets/images/loading.gif'),
              image: NetworkImage(
                  'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
        ],
      ),
    );
  }
}
