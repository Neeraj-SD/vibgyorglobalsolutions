import 'package:flutter/material.dart';

import 'package:vibgyorglobalsolutions/dummy.dart';
import 'package:vibgyorglobalsolutions/screens/detailed_screen.dart';

import '../models/category.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade700,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag,
            ),
          ),
          title: const Text('HSR Layout, KG Halli, D\',..'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GridView.count(
                        primary: true,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        childAspectRatio: 1 / 1.2,
                        crossAxisSpacing: 18,
                        mainAxisSpacing: 20,
                        padding: const EdgeInsets.only(bottom: 15),
                        crossAxisCount: 3,
                        children: [
                          ...categoriesList.map((Category e) => GridItem(
                                image: e.image,
                                name: e.name,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const AdBar(),
          ],
        ),
      ),
    );
  }
}

class AdBar extends StatelessWidget {
  const AdBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      decoration: const BoxDecoration(
        color: Colors.purple,
      ),
      child: const ListTile(
        leading: Icon(
          Icons.local_offer,
          size: 35,
          color: Colors.white60,
        ),
        title: Text(
          'Free Delivery',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          'Add items worth \$99 to get Free Delivery',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String name;
  final String image;
  const GridItem({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const DetailedScreen(),
            ),
          )),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  textAlign: TextAlign.center,
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Image.network(
                  image,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
