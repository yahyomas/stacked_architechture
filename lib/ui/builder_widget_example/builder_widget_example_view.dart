import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/ui/home/home_viewmodel.dart';

class BuilderWidgetExampleView extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Text(viewModel.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.updateTitle(),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
