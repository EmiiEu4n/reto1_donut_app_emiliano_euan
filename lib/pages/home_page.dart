import 'package:flutter/material.dart';
import 'package:reto1_donut_app_emiliano_euan/tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      // length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: Icon(Icons.menu, color: Colors.blue[800], size: 36),
                onPressed: () {
                  print("object");
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(
                  Icons.person,
                  color: Colors.blue[800],
                  size: 36,
                ),
              )
            ]),
        body: Column(children: [
          //Texto: a want to eat
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text('I want to ', style: TextStyle(fontSize: 32)),
                Text('Eat',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
          //TabBA
          TabBar(tabs: myTabs),
          //tab bar view
          Expanded( //[] quitar const
            child: TabBarView(children: [
              //donut
              DonutTab(),
              //burger
              BurgerTab(),
              //Smoothie
              SmoothieTab(),
              //Pancake
              PancakeTab(),
              //Pizza
              PizzaTab(),
            ]),
          )
          //carrito
        ]),
      ),
    );
  }
}
