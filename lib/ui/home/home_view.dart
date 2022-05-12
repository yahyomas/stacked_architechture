import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../smart_widgets/widget_one/widget_one.dart';
import '../smart_widgets/widget_two/widget_two.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(viewModel.title),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  WidgetOne(),
                  SizedBox(
                    width: 50,
                  ),
                  WidgetTwo(id: 2),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: viewModel.navigate,
            ),
            const SizedBox(width: 12,),
            FloatingActionButton(
              onPressed: viewModel.replaceWith,
            ),
            const SizedBox(width: 12,),
            FloatingActionButton(
              onPressed: viewModel.navigate1,
            ),
            const SizedBox(width: 12,),
            FloatingActionButton(
              onPressed: viewModel.navigate2,
            ),
            const SizedBox(width: 12,),

          ],
        ),
      ),
    );
  }
}
