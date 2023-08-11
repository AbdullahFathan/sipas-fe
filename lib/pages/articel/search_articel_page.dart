import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/data/dummy/articel.dart';

class SearchArticel extends StatefulWidget {
  const SearchArticel({super.key});

  @override
  State<SearchArticel> createState() => _SearchArticelState();
}

class _SearchArticelState extends State<SearchArticel> {
  TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: whiteColor,
            elevation: 0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Artikel',
                style: heading1(sizeFont: 16),
              ),
              centerTitle: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
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
                        ],
                      )),
                  Text(
                    "Berikut Artikel Terkait Pencarianmu",
                    style: heading1(sizeFont: 20),
                  ),
                ],
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
                        vertical: 16, horizontal: 16),
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
      ),
    );
  }
}
