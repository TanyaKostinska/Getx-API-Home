import 'package:get/get.dart';
import 'package:getx_api/data_source/api_data_source.dart';
import 'package:getx_api/model/fixture_item_model.dart';

class HomeController extends GetxController {
  final ApiDataSource _apiDataSource = ApiDataSource();
  final RxList<FixtureItemModel> fixtureList = RxList.empty();
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchFixtures();
  }

  Future<void> fetchFixtures() async  {


    isLoading.value = true;
    await _apiDataSource.fetchFixtures().then((List<FixtureItemModel> fixture) {
      fixtureList.value = fixture;
    });

    isLoading.value = false;
  }
}
