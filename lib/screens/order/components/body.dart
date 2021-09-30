import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2, // The number of tabs / content sections to display.
        child: Scaffold(
          appBar: AppBar(
            // leadingWidth: MediaQuery.of(context).size.width,
            elevation: 0.5,
            shadowColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Order',
              style: TextStyle(color: Colors.orange[400], fontSize: 28),
            ),
            toolbarHeight: 95,
            backgroundColor: Colors.white,
            bottom: const TabBar(
              indicatorWeight: 1.5,
              indicatorColor: Colors.orange,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 17.5,
              ),
              tabs: [
                Tab(text: "Current Order"),
                Tab(
                  text: "History",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
