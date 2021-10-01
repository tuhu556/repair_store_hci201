import 'package:flutter/material.dart';
import 'package:repair_app/dtos/garage.dart';
import 'package:repair_app/screens/order/components/history_page.dart';
import 'package:repair_app/screens/order/components/order_page.dart';



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
            elevation: 0.5,// độ rộng của bóng kẻ ngang
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
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontSize: 17),
              
              labelStyle: TextStyle(
                
                fontSize: 18,
                fontWeight: FontWeight.w500
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

              OrderPage(),

              HistoryPage()
            ],
          ),
        ),
      ),
    );
  }
}
