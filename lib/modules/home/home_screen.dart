import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/model/fixture_item_model.dart';
import 'package:getx_api/modules/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(
            child: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.fixtureList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _item(controller.fixtureList[index]);
                  }),
        )),
      ],
    );
  }

  Widget _item(FixtureItemModel item) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 16,
      ),
      padding: const EdgeInsets.all(10),
      height: 150,
      width: Get.width,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.network(
                item.teams.home.logo,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 10),
              Text(item.teams.home.name),
            ],
          ),
          Column(
            children: [
              Image.network(
                item.teams.away.logo,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 10),
              Text(item.teams.away.name),
            ],
          ),
        ],
      ),
    );
  }
}
