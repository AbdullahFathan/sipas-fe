import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/data/dummy/detail_recipes.dart';
import 'package:sipas/pages/widget/app_bar.dart';

class DetailRecipes extends StatelessWidget {
  const DetailRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: customAppBar(context, "Resep Makan"),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    width: screenSize,
                    height: screenSize * 0.5,
                    child: Image.asset(
                      "assets/images/bubur2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    child: Container(
                      width: screenSize,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 32,
                          bottom: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dataBoonganResep.title,
                                  style: heading1(sizeFont: 20),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark),
                                  color: const Color(0xff836077),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Wrap(
                                children: dataBoonganResep.typeRecipes
                                    .map(
                                      (TypeRecipes item) => Padding(
                                        padding: const EdgeInsets.only(
                                            right: 6, top: 6),
                                        child: Material(
                                          color: item.color,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4, horizontal: 8),
                                            child: Text(
                                              item.text,
                                              style: headline(
                                                sizeFont: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, top: 20),
                              child: Text(
                                "Bahan Yang Perlu Disiapkan",
                                style: headline(
                                    sizeFont: 16, colorFont: violetColor),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: dataBoonganResep.foodMaterial
                                    .map((String material) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2),
                                          child: Text(
                                            material,
                                            style: bodyMedium(
                                                sizeFont: 14,
                                                colorFont: greyColor),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, top: 16),
                              child: Text(
                                "Cara Membuat",
                                style: headline(
                                    sizeFont: 16, colorFont: violetColor),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: dataBoonganResep.makeFood
                                    .map((String material) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2),
                                          child: Text(
                                            material,
                                            style: bodyMedium(
                                                sizeFont: 14,
                                                colorFont: greyColor),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, top: 16),
                              child: Text(
                                "Informasi Nilai Gizi",
                                style: headline(
                                    sizeFont: 16, colorFont: violetColor),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: dataBoonganResep.foodNutrition
                                    .map((String material) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2),
                                          child: Text(
                                            material,
                                            style: bodyMedium(
                                                sizeFont: 14,
                                                colorFont: greyColor),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, top: 16),
                              child: Text(
                                "Resep Ditulis Oleh",
                                style: headline(
                                    sizeFont: 16, colorFont: violetColor),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text(
                                    dataBoonganResep.maker,
                                    style: bodyMedium(
                                        sizeFont: 14, colorFont: greyColor),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
