import 'package:flutter/material.dart';

class LoginBrandSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://raw.githubusercontent.com/o7planning/rs/master/flutter/bookstore.webp',
            ),
          ),
          const Text(
            'Sai Gon Bookstore',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
            ),
          ),
          const Text(
            'Nguyen Thi Bich Ngoc',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
            ),
          ),

          const Text(
            '221121514223',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
            ),
          ),

        ],
      ),
    );
  }
}