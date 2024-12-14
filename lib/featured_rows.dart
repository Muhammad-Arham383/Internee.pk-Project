import 'package:flutter/material.dart';

class FeaturedRows extends StatelessWidget {
  const FeaturedRows({super.key, required this.featuredText});
  final String featuredText;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: FittedBox(
              child: Text(
                featuredText,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )),
        SizedBox(width: width * 0.3),
        Expanded(
          flex: 1,
          child: TextButton(
              onPressed: () {},
              child: const FittedBox(
                child: Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              )),
        )
      ],
    );
  }
}
