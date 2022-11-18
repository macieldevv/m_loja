import 'package:flutter/material.dart';
import 'package:monteirolojjja/tabs/category_tab.dart';
import 'package:monteirolojjja/tabs/home_tab.dart';
import 'package:monteirolojjja/tabs/orders_tab.dart';
import 'package:monteirolojjja/tabs/places_tab.dart';
import 'package:monteirolojjja/widgets/card_button.dart';
import 'package:monteirolojjja/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CardButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Categorias"),
            centerTitle: true,
          ),
          body: CategoryTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CardButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Lojas"),
            centerTitle: true,
          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meus Pedidos"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
