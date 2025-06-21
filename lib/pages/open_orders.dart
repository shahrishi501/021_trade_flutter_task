import 'package:flutter/material.dart';
import 'package:trade_021/bottom_nav_bar.dart';
import 'package:trade_021/models/order.dart';
import 'package:trade_021/widgets/order_card_widget.dart';

class OpenOrders extends StatelessWidget {
  final List<ActiveOrder> activeOrders = [
    ActiveOrder(
      symbol: "RELIANCE",
      time: "08:14:31",
      product: "CNC",
      price: 250.50,
      quantityExecuted: 50,
      quantityTotal: 100,
      clientId: "AAA001",
      isBuy: true,
    ),
    ActiveOrder(
      symbol: "MRF",
      time: "08:14:31",
      product: "NRML",
      price: 2700.00,
      quantityExecuted: 10,
      quantityTotal: 20,
      clientId: "AAA003",
      isBuy: true,
    ),
    ActiveOrder(
      symbol: "ASIANPAINT",
      time: "08:14:31",
      product: "NRML",
      price: 1506.60,
      quantityExecuted: 10,
      quantityTotal: 30,
      clientId: "AAA002",
      isBuy: true,
    ),
    ActiveOrder(
      symbol: "TATAINVEST",
      time: "08:14:31",
      product: "INTRADAY",
      price: 2300.10,
      quantityExecuted: 10,
      quantityTotal: 10,
      clientId: "AAA02",
      isBuy: false,
    ),
  ];
  OpenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: false,
        scrolledUnderElevation: 0,
        toolbarHeight: 70,
        title: Row(
          children: [
            SizedBox(
              height: 70,
              width: 50,
              child: Image.asset(
                "assets/diamond-hands.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NIFTY 50",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "56.252.85",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NIFTY FIN SERVICE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "26,648.70",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down_outlined, size: 40),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(0),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Open orders",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Add cancel all functionality here
                      },
                      child: Row(
                        children: [
                          Text(
                            "Download",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Icon(
                            Icons.file_download_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Search for stock,future,option or index",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10, right: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: w * 0.32,
                    height: h * 0.03,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 154, 209, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "RELIANCE",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(Icons.cancel, color: Colors.blue[900], size: 20),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: w * 0.37,
                    height: h * 0.03,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 154, 209, 255),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "ASIANPAINT",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(Icons.cancel, color: Colors.blue[900], size: 20),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: Colors.grey[300], thickness: 2),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Active orders",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Add cancel all functionality here
                      },
                      child: Row(
                        children: [
                          Icon(Icons.close, color: Colors.red, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            "Cancel All",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:
                    activeOrders
                        .length, // Adjust this based on your actual number of orders
                itemBuilder: (context, index) {
                  return OrderCardWidget(order: activeOrders[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Row(
//           children: [
//             SizedBox(
//               height: 70,
//               width: 50,
//               child: Image.asset(
//                 "assets/diamond-hands.png",
//                 fit: BoxFit.contain,
//               ),
//             ),
//             const SizedBox(width: 15),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "NIFTY 50",
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.grey[700],
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "56.252.85",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.green,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(width: 20),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "NIFTY FIN SERVICE",
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.grey[700],
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "26,648.70",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.red,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),