import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:vibgyorglobalsolutions/dummy.dart';
import 'package:vibgyorglobalsolutions/screens/overview_screen.dart';

import '../models/Item.dart';
import '../models/filter.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({Key? key}) : super(key: key);

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  Filter selectedFilter = filters[0];

  void setFilter(Filter filter) => setState(() {
        selectedFilter = filter;
        print(selectedFilter.name);
        print(items
            .where((element) => element.filter == selectedFilter.name)
            .toList());
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          title: const Text(
            'Fruits and Vegetables (302)',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.purple.shade50,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount: filters.length,
                          itemBuilder: (BuildContext context, int index) =>
                              GestureDetector(
                            onTap: () => setFilter(
                              filters[index],
                            ),
                            child: CategoryItem(
                              selectedFilter: selectedFilter,
                              filter: filters[index],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: selectedFilter.name == 'All'
                            ? GridView.count(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                childAspectRatio: (1 / 1.25),
                                crossAxisSpacing: 10,
                                padding: const EdgeInsets.all(8.0),
                                shrinkWrap: true,
                                children: [
                                  ...items.map(
                                    (e) => DetailedItem(item: e),
                                  ),
                                ],
                              )
                            : GridView.count(
                                primary: false,
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                childAspectRatio: (1 / 1.25),
                                crossAxisSpacing: 10,
                                padding: const EdgeInsets.all(8.0),
                                shrinkWrap: true,
                                children: [
                                  ...items
                                      .where((element) =>
                                          element.filter == selectedFilter.name)
                                      .toList()
                                      .map(
                                        (e) => DetailedItem(item: e),
                                      ),
                                ],
                              ),
                      ),
                    ],
                  ),
                ),
                const AdBar(),
              ],
            ),
            Positioned.fill(
              bottom: -450,
              left: 0,
              child: Align(
                child: Container(
                  height: 48,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade700,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.category_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Browse Category',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailedItem extends StatelessWidget {
  final Item item;

  const DetailedItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Expanded(
                child: Image.network(
                  item.image,
                  height: 100,
                  width: 80,
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Text(
                          item.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Kg',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '₹${item.discountPrice}',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey.shade300,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '₹${item.actualPrice}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: -15,
            right: -15,
            child: Stack(
              children: const [
                Icon(
                  Icons.local_offer,
                  color: Colors.red,
                  size: 40,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '23',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Card(
                // padding: const EdgeInsets.all(10),
                child: IconButton(
                  color: Colors.red,
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Filter selectedFilter;
  final Filter filter;
  const CategoryItem({
    Key? key,
    required this.selectedFilter,
    required this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          selectedFilter == filter
              ? Container(
                  padding: const EdgeInsets.only(
                    left: 13,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade200,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.purple.shade200,
                    backgroundImage: NetworkImage(
                      filter.image,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purple.shade200,
                  backgroundImage: NetworkImage(
                    filter.image,
                  ),
                ),
          const SizedBox(
            height: 5,
          ),
          Text(
            filter.name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
