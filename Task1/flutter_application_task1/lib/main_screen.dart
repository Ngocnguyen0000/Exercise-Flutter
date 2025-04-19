import 'package:flutter/material.dart';
import 'button_section.dart';
import 'image_section.dart';
import 'description_section.dart';
import 'title_section.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Layout")),
      body: Center(
        child: _buildMainWidget(context),
      ),
    );
  }

  Widget _buildMainWidget(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSection(
            imageUrl:
                'https://raw.githubusercontent.com/o7planning/rs/master/flutter/mountain-1.webp',
          ),
          SizedBox(height: 20),
          TitleSection(
            name: "Oeschinen Lake Campground",
            location: "Kandersteg, Switzerland",
          ),
          SizedBox(height: 20),
          ButtonSection(),
          SizedBox(height: 20),
          DescriptionSection(
            description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                'Bernese Alps. Situated 1,578 meters above sea level, it '
                'is one of the larger Alpine Lakes. A gondola ride from '
                'Kandersteg, followed by a half-hour walk through pastures '
                'and pine forest, leads you to the lake, which warms to 20 '
                'degrees Celsius in the summer. Activities enjoyed here '
                'include rowing, and riding the summer toboggan run.',
          ),
        ],
      ),
    );
  }
}