import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/data/dummy/articel.dart';

class SavedArticelTab extends StatefulWidget {
  const SavedArticelTab({super.key});

  @override
  State<SavedArticelTab> createState() => _SavedArticelTabState();
}

class _SavedArticelTabState extends State<SavedArticelTab> {
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
              return GestureDetector(
                onTap: () => Navigator.pushNamed(context, detailArticelRoute,
                    arguments: dummyArticelData[0]),
                child: Container(
                  width: 200,
                  height: 85,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
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
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 8, left: 10),
                              child: Text(
                                dummyArticelData[0].title,
                                style: headline(sizeFont: 14),
                                maxLines: 3, // Set maximum number of lines
                                overflow: TextOverflow
                                    .ellipsis, // Handle overflow with ellipsis
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        dummyArticelData[0].image,
                        width: 84,
                        height: 74,
                      )
                    ],
                  ),
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
