import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';
import 'package:myshop/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeView(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, -2))
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: TextStyle(
                  color: TColor.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              unselectedLabelColor: TColor.primaryText,
              unselectedLabelStyle: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
              tabs: [
                Tab(
                  text: "Shop",
                  icon: Image.asset(
                    selectTab == 0
                        ? "assets/images/store_fill_tab.png"
                        : "assets/images/store_outline_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Explore",
                  icon: Image.asset(
                    selectTab == 1
                        ? "assets/images/rocket_fill_tab.png"
                        : "assets/images/rocket_outline_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 1 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Cart",
                  icon: Image.asset(
                    selectTab == 2
                        ? "assets/images/shop_tab_fill.png"
                        : "assets/images/shop_outline_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 2 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Favorite",
                  icon: Image.asset(
                    selectTab == 3
                        ? "assets/images/love_fill_tab.png"
                        : "assets/images/love_outline_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 3 ? TColor.primary : TColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Account",
                  icon: Image.asset(
                    selectTab == 4
                        ? "assets/images/user_fill_tab.png"
                        : "assets/images/user_outline_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 4 ? TColor.primary : TColor.primaryText,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
