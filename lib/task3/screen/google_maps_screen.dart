import 'package:flutter/material.dart';
import 'package:test_google_maps/task3/widgets/custom_button.dart';
import 'package:test_google_maps/task3/widgets/custom_search_bar.dart';

class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          const Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CustomSearchBar(),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        height: 35,
                        width: 74,
                        text: "Oil",
                        icon: Icons.local_gas_station,
                      ),
                      CustomButton(
                        height: 35,
                        width: 95,
                        text: "Hotels",
                        icon: Icons.hotel,
                      ),
                      CustomButton(
                        height: 35,
                        width: 90,
                        text: "Shops",
                        icon: Icons.shopping_cart_sharp,
                      ),
                      CustomButton(
                        height: 35,
                        width: 125,
                        text: "Restaurants",
                        icon: Icons.restaurant,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 30,
            child: Column(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.location_on),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.arrow_circle_right_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
