import 'package:flutter/material.dart';

import '../models/user_data.dart';
import 'travel_item_card.dart';

class ListOfTravelItems extends StatelessWidget {
  const ListOfTravelItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 304,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topUsers.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          User item = topUsers[index];
          return TravelItemCard(user: item);
        },
      ),
    );
  }
}
