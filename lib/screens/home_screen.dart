import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final routesInfo = <Map<String, dynamic>>[
    {'routeName': 'listview1', 'listLabel': 'ListView'},
    {'routeName': 'listview2', 'listLabel': 'ListView 2'},
    {'routeName': 'card', 'listLabel': 'Card Widget'},
    {'routeName': 'alert', 'listLabel': 'Alert Widget'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Widgets flutter"),
          ),
        ),
        body: ListView.separated(
          itemCount: routesInfo.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.account_balance_wallet_rounded),
            title: Text(routesInfo[index]["listLabel"]),
            onTap: () {
              Navigator.pushNamed(context, routesInfo[index]["routeName"]);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
