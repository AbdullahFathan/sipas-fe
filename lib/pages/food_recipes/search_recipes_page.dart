import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/data/constants/recipes_cons.dart';
import 'package:sipas/pages/widget/filter_chip.dart';
import 'package:sipas/pages/widget/modal_bottom.dart';

class SearchRecipesPage extends StatefulWidget {
  const SearchRecipesPage({super.key});

  @override
  State<SearchRecipesPage> createState() => _SearchRecipesPageState();
}

class _SearchRecipesPageState extends State<SearchRecipesPage> {
  TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 32,
                            )),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: TextField(
                            controller: searchTextController,
                            decoration: InputDecoration(
                              hintText: "Cari Resep disini",
                              prefixIcon: const Icon(
                                Icons.search,
                                color: greyColor,
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 16, top: 8, bottom: 8),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: borderGreyColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: borderGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        IconButton(
                            onPressed: () async {
                              final result = await showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return FilterModalBottomSheet();
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.tune,
                              size: 32,
                            )),
                      ],
                    )),
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
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 20),
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
                                        "6 - 12 Bulan",
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
          ),
        ),
      ),
    );
  }
}
