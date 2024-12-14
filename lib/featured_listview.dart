import 'package:flutter/material.dart';
import 'package:internee_pk_project/internship_containers.dart';

class FeaturedListViewWidget extends StatelessWidget {
  const FeaturedListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        InternshipContainers(
          title1: 'MASTER',
          title2: 'WORDPRESS',
          title3: 'Wordpress',
          title4: 'Website Design',
          containerColor: Color.fromARGB(255, 13, 161, 180),
        ),
        InternshipContainers(
          title1: 'MASTER',
          title2: 'FIGMA',
          title3: 'Figma',
          title4: 'Graphic Design',
          containerColor: Color.fromARGB(255, 45, 45, 45),
        ),
        InternshipContainers(
          title1: 'MASTER',
          title2: 'ILLUSTRATOR',
          title3: 'Illustrator',
          title4: 'Graphic Design',
          containerColor: Colors.orange,
        ),
        InternshipContainers(
          title1: 'MASTER',
          title2: 'PHOTOSHOP',
          title3: 'PhotoShop',
          title4: 'Graphic Design',
          containerColor: Color.fromARGB(255, 96, 179, 247),
        ),
        InternshipContainers(
          title1: 'MASTER',
          title2: 'NODE JS',
          title3: 'Node.Js',
          title4: 'Website Development',
          containerColor: Colors.green,
        ),
      ],
    );
  }
}
