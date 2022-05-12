import 'package:stacked/stacked.dart';
import 'package:stacked_architecture/app/app.locator.dart';
import 'package:stacked_architecture/app/app.logger.dart';
import 'package:stacked_architecture/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');
  final NavigationService _navigationService = exampleLocator<NavigationService>();

  HomeViewModel() {
    log.d('created');
  }

  String title = 'default';

  void navigate() {
    _navigationService.navigateTo(Routes.nonReactiveView);
  }

  void replaceWith() {
    _navigationService.replaceWith(Routes.bottomNavExample);
  }

  void navigate1() {
    _navigationService.navigateTo(Routes.detailsView,arguments: DetailsViewArguments(name: 'test name'));
  }

  void navigate2() {
    _navigationService.navigateTo(Routes.exampleFormView);
  }


  void initialise() {
    log.i('initialise');
    title = 'initialised';
    notifyListeners();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    title = '$counter';
    notifyListeners();
  }
}
