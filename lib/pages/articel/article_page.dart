import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/data/dummy/articel.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
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
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, searchArticelRoute),
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 16, top: 8, bottom: 5),
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
                            "Cari Artikel Disini",
                            style:
                                bodyMedium(sizeFont: 14, colorFont: greyColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 28,
                    ),
                    child: Text(
                      "Artikel Harian Untuk Orang Tua",
                      style: heading1(sizeFont: 20),
                    ),
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
                      arguments: dummyArticelData[index]),
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
                                    top: 15, bottom: 8, right: 14),
                                child: Text(
                                  dummyArticelData[index].title,
                                  style: headline(sizeFont: 14),
                                  maxLines: 3, // Set maximum number of lines
                                  overflow: TextOverflow
                                      .ellipsis, // Handle overflow with ellipsis
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 84,
                          height: 74,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.network(
                            dummyArticelData[index].image,
                            fit: BoxFit.cover,
                          ),
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
