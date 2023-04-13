import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/widgets/single_product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<dynamic> list = [
    
      "https://user-images.githubusercontent.com/67945756/230272297-6d20cefc-22d1-4b80-baf9-95b1d396e995.png",
      "https://user-images.githubusercontent.com/67945756/230272288-9c60c6d4-6b5b-4d64-980f-d8ca385cead3.png",
      "https://user-images.githubusercontent.com/67945756/230390360-15eeb3fc-35c5-47b4-8336-7cecf6c2bb6f.png",
      "https://user-images.githubusercontent.com/67945756/230390888-e13ee49b-65ac-4262-93f1-2d3105b55892.png",
      "https://user-images.githubusercontent.com/67945756/230390932-e465754c-6408-49f8-971f-cf376396d47f.png"
    
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index){
              return SingleProduct(
                image: list[index].toString(),
              );
            },
          ),
        ),
      ],
    );
  }
}
