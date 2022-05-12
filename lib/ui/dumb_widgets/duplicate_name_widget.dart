import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/datamodels/human.dart';

class DuplicateNameWidget extends ViewModelWidget<Human> {
  @override
  Widget build(BuildContext context, Human model) {
    return Row(
      children: <Widget>[
        Container(
          child: Text(model.name!),
        ),
        SizedBox(
          width: 50,
        ),
        Container(
          child: Text(model.name!),
        ),
      ],
    );
  }
}
