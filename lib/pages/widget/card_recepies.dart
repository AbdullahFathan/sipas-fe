import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/data/model/detail_recipes.dart';

class CardRecepies extends StatelessWidget {
  final Recepies recepiesData;
  const CardRecepies({
    Key? key,
    required this.recepiesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, detailRecipesRoute,
          arguments: recepiesData),
      child: Container(
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
                    recepiesData.judulResep,
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
                          recepiesData.jenis,
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
                          recepiesData.targetUsiaResep,
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
            Image.network(
              recepiesData.urlGambar,
              width: 84,
              height: 74,
            )
          ],
        ),
      ),
    );
  }
}
