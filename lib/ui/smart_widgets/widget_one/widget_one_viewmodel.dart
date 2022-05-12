import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/app/app.locator.dart';
import 'package:stacked_architecture/services/information_service.dart';

class WidgetOneViewModel extends ReactiveViewModel {
  final InformationService _informationService =
      exampleLocator<InformationService>();

  int get postCount => _informationService.postCount;

  void updatePostCount() {
    setBusy(true);
    Future.delayed(Duration(seconds: 2))
        .then((value) {
      _informationService.updatePostCount();
      setBusy(false);
    } );
  }

  Future longUpdateStuff() async {
    var result = await runBusyFuture(updateStuff());
  }

  Future updateStuff() {
    return Future.delayed(const Duration(seconds: 3));
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_informationService];
}
