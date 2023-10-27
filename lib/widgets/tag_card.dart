import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../size_config.dart';

class TagCard extends StatelessWidget {
  final List<String> tags;

  TagCard(this.tags);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 14,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 38.0),
              child: Text(
                tags[index],
                style: tGellixMedium.copyWith(
                  color: tGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
