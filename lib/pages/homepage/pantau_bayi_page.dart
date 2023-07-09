import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/homepage/data_anak_tab.dart';
import 'package:sipas/pages/homepage/pantau_kehamilan_tab.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class PantauAnakPage extends StatefulWidget {
  const PantauAnakPage({Key? key}) : super(key: key);

  @override
  State<PantauAnakPage> createState() => _PantauAnakPageState();
}

class _PantauAnakPageState extends State<PantauAnakPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Pantau',
          style: heading1(sizeFont: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            constraints: const BoxConstraints.expand(height: 50),
            child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    child: Text("Kehamilan Saya",
                        style: headline(
                            sizeFont: 14,
                            colorFont: _tabController.index == 0
                                ? orangeColor
                                : greyColor)),
                  ),
                  Tab(
                    child: Text(
                      "Anak Saya",
                      style: headline(
                          sizeFont: 14,
                          colorFont: _tabController.index == 1
                              ? orangeColor
                              : greyColor),
                    ),
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: orangeColor,
                labelStyle: headline()),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                PantauKehamilanTab(),
                DataAnakTab(),
              ],
            ),
          ),
          OrangeButton(
            contentText: "Simpan",
            minimumSize: const Size(328, 48),
            maximumSize: const Size(double.infinity, 48),
            onPressedFunc: () => print("has been tap"),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
