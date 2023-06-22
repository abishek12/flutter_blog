import 'package:flutter/material.dart';

import 'list_of_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.20,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listOfCategory.length,
          itemBuilder: (context, index) {
            final items = listOfCategory[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/${items['imageUrl']}.jpg",
                      width: MediaQuery.of(context).size.width * 0.32,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                        ),
                        child: Center(
                          child: Text(
                            "${items['title']}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
