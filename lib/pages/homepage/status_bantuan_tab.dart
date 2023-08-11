import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';

class StatusBantuanTab extends StatelessWidget {
  const StatusBantuanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 5),
              child: Text(
                'Status Ajuanmu',
                style: heading1(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Pantau status dari ajuanmu untuk melihat prosesnya disini',
                style: bodyMedium(
                  sizeFont: 14,
                  colorFont: greyColor,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              margin: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: borderGreyColor,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pengajuan Bantuan Mainan Anak Bekas',
                    style: headline(sizeFont: 16),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Status Ajuanmu:',
                        style: bodyMedium(sizeFont: 14),
                        children: [
                          TextSpan(
                            text: 'Diterima',
                            style: bodyMedium(
                              sizeFont: 14,
                              colorFont: greenColor,
                            ),
                          )
                        ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
