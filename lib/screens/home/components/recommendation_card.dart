import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';

import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            recommendation.source!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, height: 1.5),
          )
        ],
      ),
    );
  }
}
