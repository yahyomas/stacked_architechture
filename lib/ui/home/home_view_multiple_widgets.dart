import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/ui/dumb_widgets/description_section.dart';
import 'package:stacked_architecture/ui/dumb_widgets/title_section.dart';

import 'home_viewmodel.dart';

class HomeViewMultipleWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.updateTitle();
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleSection(),
            DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
