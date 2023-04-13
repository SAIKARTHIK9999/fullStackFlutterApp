import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          "https://user-images.githubusercontent.com/67945756/230272297-6d20cefc-22d1-4b80-baf9-95b1d396e995.png",
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            '₹125000',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'iPhone 14 Pro Max',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://user-images.githubusercontent.com/67945756/230272297-6d20cefc-22d1-4b80-baf9-95b1d396e995.png",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://user-images.githubusercontent.com/67945756/230272288-9c60c6d4-6b5b-4d64-980f-d8ca385cead3.png",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://user-images.githubusercontent.com/67945756/230390360-15eeb3fc-35c5-47b4-8336-7cecf6c2bb6f.png",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://user-images.githubusercontent.com/67945756/230390888-e13ee49b-65ac-4262-93f1-2d3105b55892.png",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://user-images.githubusercontent.com/67945756/230390932-e465754c-6408-49f8-971f-cf376396d47f.png",
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        ),
      ],
    );
  }
}
