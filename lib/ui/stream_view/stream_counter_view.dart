import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/ui/stream_view/stream_counter_viewmodel.dart';

class StreamCounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamCounterViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(viewModel.title),
        ),
        floatingActionButton: MaterialButton(
          child: const Text('Change Stream Sources'),
          onPressed: viewModel.changeStreamSources,
        ),
      ),
      viewModelBuilder: () => StreamCounterViewModel(),
    );
  }
}
