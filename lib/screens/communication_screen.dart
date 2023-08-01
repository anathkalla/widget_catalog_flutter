import 'package:flutter/material.dart';

import '../../widgets/Communication/Badges/badge.dart';
import '../../widgets/Communication/ProgressIndicators/circular_progress_indicators.dart';
import '../../widgets/Communication/ProgressIndicators/linear_progress_indicator.dart';

class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        children: [
          CsBadge(),
          Text("Badge on top right corner"),
          SizedBox(
            height: 40,
          ),
          CsLinearProgressIndicator(),
          Text("Linear Progress indicator"),
          SizedBox(
            height: 40,
          ),
          SizedBox(width: 60, height: 60, child: CsCircularProgressIndicator()),
          Text("Circular Progress indicator"),
        ],
      ),
    ));
  }
}
