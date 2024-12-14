import 'package:flutter/material.dart';

class InternshipContainers extends StatelessWidget {
  const InternshipContainers(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.containerColor});
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    var containerWidth = MediaQuery.of(context).size.width;
    var ContainerHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: containerWidth * 0.01),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        width: containerWidth * 0.38,
        height: ContainerHeight * 0.20,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                width: containerWidth * 0.47,
                height: ContainerHeight * 0.12,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0.8),
                          child: Text(
                            title1,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      title2,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: containerWidth * 0.02),
              child: Row(
                children: [
                  Text(
                    title3,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              title4,
              style: TextStyle(fontSize: 12),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: containerWidth * 0.01,
                  vertical: ContainerHeight * 0.02),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.purple, width: 1)),
              width: containerWidth * 0.49,
              height: ContainerHeight * 0.06,
              child: const Center(
                  child: Text(
                'Apply Now',
                style: TextStyle(color: Colors.purple),
              )),
            )
          ],
        ),
      ),
    );
  }
}
