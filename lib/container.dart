import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  final String data1;
  final String data2;
  final String data3;
  final String buttonText;
  final String imagePath;
  const ListViewContainer(
      {super.key,
      required this.data1,
      required this.data2,
      required this.data3,
      required this.buttonText,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.6,
        decoration: BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            opacity: 0.3,
            filterQuality: FilterQuality.low,
            colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 11, 169, 19), BlendMode.color),
            fit: BoxFit.fill,
            image: AssetImage(imagePath),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      data1,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Expanded(
                    child: Container(
                      width: 260,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Center(
                        child: Text(
                          data2,
                          style: const TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Expanded(
                    child: Text(
                      data3,
                      style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
/** */