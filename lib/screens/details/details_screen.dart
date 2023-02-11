import 'package:flutter/material.dart';

import 'components/detail_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailBody(),
  );
  }
}
