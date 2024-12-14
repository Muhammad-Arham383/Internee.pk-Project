import 'package:flutter/material.dart';
import 'package:internee_pk_project/container.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        ListViewContainer(
            data1: 'LINK SAVER',
            data2: 'CV MAKER',
            data3: 'TODOs LIST',
            buttonText: 'CLICK TO DOWNLOAD',
            imagePath: 'assets/images/cv.jpg'),
        ListViewContainer(
            data1: 'INTERNSHIP',
            data2: 'ISSUES?',
            data3: 'EMAIL US',
            buttonText: 'CLICK TO SEND',
            imagePath: 'assets/images/internship.jpg'),
        ListViewContainer(
            data1: 'JOIN OUR ',
            data2: 'WHATSAPP',
            data3: 'GROUP',
            buttonText: 'CLICK TO JOIN',
            imagePath: 'assets/images/group.jpg'),
        ListViewContainer(
            data1: 'WHY',
            data2: 'I AM NOT',
            data3: 'SELECTED',
            buttonText: 'CLICK TO READ',
            imagePath: 'assets/images/selection.jpg'),
      ],
    );
  }
}
