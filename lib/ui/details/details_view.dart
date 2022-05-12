import 'package:flutter/material.dart';
import 'package:stacked_architecture/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class DetailsView extends StatelessWidget {
  final String name;

  const DetailsView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(name)),
    );
  }
}
