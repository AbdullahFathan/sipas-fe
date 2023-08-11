import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';

class SavedRecipestab extends StatefulWidget {
  const SavedRecipestab({super.key});

  @override
  State<SavedRecipestab> createState() => _SavedRecipestabState();
}

class _SavedRecipestabState extends State<SavedRecipestab> {
  TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextField(
              controller: searchTextController,
              decoration: InputDecoration(
                hintText: "Cari Resep disini",
                prefixIcon: const Icon(
                  Icons.search,
                  color: greyColor,
                ),
                contentPadding:
                    const EdgeInsets.only(left: 16, top: 8, bottom: 8),
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
    );
  }
}
