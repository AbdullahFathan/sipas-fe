import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/widget/app_bar.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class GrupPage extends StatelessWidget {
  const GrupPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> puskemasName = [
      'Vaksin Puskesmas Lumut',
      'Bansos Puskesmas Lumut'
    ];
    return Scaffold(
      appBar: customAppBar(context, 'Grup'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilihan Grup Whatsapp',
              style: heading1(),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Berikut adalah pilihan Grup Whatsapp yang dapat kamu pilih untuk bergabung, agar ga ketinggalan informasi dari fasilitas kesehatan yang terhubung',
              style: bodyMedium(sizeFont: 14, colorFont: greyColor),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: puskemasName.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: violetColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Grup Pengumuman Informasi\n${puskemasName[index]}',
                          style: headline(
                            sizeFont: 14,
                            colorFont: violetColor,
                          ),
                        ),
                      ),
                      OrangeButton(
                        contentText: 'Gabung',
                        minimumSize: const Size(100, 40),
                        maximumSize: const Size(100, 40),
                        onPressedFunc: () => print('has been tap'),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
