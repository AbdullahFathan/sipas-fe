class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;
  Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}

List<Message> message = [
  Message(
      text:
          'aku bingung gimana ya biar aku bisa merawat anakku biar dia ga kenak stunting',
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSentByMe: true),
  Message(
      text:
          'Tips mencegah stunting dan merawat anak dengan baik: \n1. Berikan makanan seimbang dan kaya gizi. \n2. Berikan ASI eksklusif selama 6 bulan pertama. \n3. Perhatikan gizi anak pada periode 1.000 hari pertama.',
      date: DateTime.now().subtract(const Duration(minutes: 2)),
      isSentByMe: false),
  Message(
      text:
          'aku bingung gimana ya biar aku bisa merawat anakku biar dia ga kenak stunting',
      date: DateTime.now().subtract(const Duration(minutes: 3)),
      isSentByMe: true),
  Message(
      text:
          'Alternatif jika ASI kurang lancar untuk memberikan gizi cukup pada anak: \n1. Susu formula: Konsultasikan dengan dokter untuk memilih yang sesuai. \n2. MP-ASI: Berikan makanan pendamping ASI sesuai usia anak. \n3. Donor ASI: Pertimbangkan mendapatkan ASI dari ibu lain yang donor. Ingatlah untuk selalu berkonsultasi dengan profesional kesehatan untuk rekomendasi yang tepat.',
      date: DateTime.now().subtract(const Duration(minutes: 4)),
      isSentByMe: false),
  Message(
      text:
          'aku bingung gimana ya biar aku bisa merawat anakku biar dia ga kenak stunting',
      date: DateTime.now().subtract(const Duration(days: 2)),
      isSentByMe: true),
  Message(
      text:
          'Alternatif jika ASI kurang lancar untuk memberikan gizi cukup pada anak: \n1. Susu formula: Konsultasikan dengan dokter untuk memilih yang sesuai. \n2. MP-ASI: Berikan makanan pendamping ASI sesuai usia anak. \n3. Donor ASI: Pertimbangkan mendapatkan ASI dari ibu lain yang donor. Ingatlah untuk selalu berkonsultasi dengan profesional kesehatan untuk rekomendasi yang tepat.',
      date: DateTime.now().subtract(const Duration(days: 2)),
      isSentByMe: false),
];
