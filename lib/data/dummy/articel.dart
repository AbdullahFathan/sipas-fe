class Articel {
  Articel({
    required this.title,
    required this.image,
    required this.creator,
    required this.editor,
    required this.date,
    required this.content,
  });

  String content;
  String creator;
  String date;
  String editor;
  String image;
  String title;
}

List<Articel> dummyArticelData = [
  Articel(
      title: 'Perhatian! Berikut 8 tanda-tanda gejala umum stunting pada anak',
      image: 'assets/images/baby.jpg',
      creator: 'Puskesmas Lumut',
      editor: 'Dr. Sumiati',
      date: '27 Juli 2023',
      content: """
Berikut ini adalah beberapa gejala stunting pada anak yang harus diwaspadai oleh para orangtua, diantaranya adalah:

1. Pertumbuhan tulang pada anak yang tertunda
2. Berat badan rendah apabila dibandingkan dengan anak seusianya
3. Sang anak berbadan lebih pendek dari anak seusianya
4. Proporsi tubuh yang cenderung normal tapi tampak lebih muda/kecil untuk seusianya.

Upaya pencegahan untuk mengatasi stunting adalah hal yang utama. Para orangtua diharapkan bisa rutin melakukan pemeriksaan kandungan ke fasilitas kesehatan terdekat, rutin mengkonsumsi Tablet Tambah Darah, serta memenuhi asupan gizi, seperti protein hewani yang baik bagi tumbuh kembang janin. Remaja putri aktif minum tablet tambah darah 1 tablet seminngu sekali. Pemberian ASI ekslusif pada bayi selama 6 bulan. bayi di atas enam bulan diberikan konsumsi protein hewani dan tetap melanjutkan ASI. Jangan lupa datang ke Posyandu setiap bulan untuk memantau pertumbuhan dan perkembangan serta imunisasi balita.
"""),
];
