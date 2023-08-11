import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/data/constants/recipes_cons.dart';
import 'package:sipas/pages/widget/filter_chip.dart';

class RecipesMother extends StatefulWidget {
  const RecipesMother({super.key});

  @override
  State<RecipesMother> createState() => _RecipesMotherState();
}

class _RecipesMotherState extends State<RecipesMother> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, searchRecipesRoute),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 1,
                        color: borderGreyColor,
                      )),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: greyColor,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Cari Resep disini",
                        style: bodyMedium(sizeFont: 14, colorFont: greyColor),
                      )
                    ],
                  ),
                )),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: timeDataFilters.map((filter) {
                return FilterChipCustom(
                    filter: filter,
                    onSelectedFunc: (bool selected) {
                      setState(() {
                        if (selected) {
                          resetFilters(timeDataFilters);
                          filter.isSelected = true;
                        }
                      });
                    });
              }).toList(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Text(
              'Resep Makanan Untuk Ibu Hamil',
              style: heading1(),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                width: 200,
                height: 85,
                margin: const EdgeInsets.symmetric(vertical: 16),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: borderGreyColor,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 20),
                          child: Text(
                            'Bubur Ayam Sehat Dan Lezat',
                            style: headline(sizeFont: 14),
                          ),
                        ),
                        Row(
                          children: [
                            Material(
                              color: orangeColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                child: Text(
                                  "Makan Malam",
                                  style: headline(
                                    sizeFont: 12,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Material(
                              color: lightVioletColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                child: Text(
                                  "Trisemester 1",
                                  style: headline(
                                    sizeFont: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/bubur2.jpg',
                      width: 84,
                      height: 74,
                    )
                  ],
                ),
              );
            },
            childCount: 6,
          ),
        ),
      ],
    );
  }
}
