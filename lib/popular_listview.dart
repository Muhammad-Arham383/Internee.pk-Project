import 'package:flutter/material.dart';

import 'package:internee_pk_project/internship_containers.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        InternshipContainers(
            title1: 'MASTER',
            title2: 'REACT',
            title3: 'React',
            title4: 'Website Design',
            containerColor: Color.fromARGB(255, 15, 29, 53)),
        InternshipContainers(
            title1: 'MASTER',
            title2: 'FLUTTER',
            title3: 'Flutter',
            title4: 'Mobile App',
            containerColor: Colors.black45),
        InternshipContainers(
            title1: 'MASTER',
            title2: 'PHP',
            title3: 'PHP',
            title4: 'Website Development',
            containerColor: Colors.deepPurple),
        InternshipContainers(
            title1: 'MASTER',
            title2: 'NEXT.JS',
            title3: 'Next.js',
            title4: 'Website Design',
            containerColor: Colors.grey),
        InternshipContainers(
            title1: 'MASTER',
            title2: 'FIGMA',
            title3: 'Figma',
            title4: 'Graphic Design',
            containerColor: Colors.black),
      ],
    );
  }
}
