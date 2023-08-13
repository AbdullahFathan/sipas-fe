class Articel {
  Articel({
    required this.title,
    required this.image,
    required this.creator,
    required this.editor,
    required this.date,
    required this.content,
    required this.isBook, // Add this field
  });

  String content;
  String creator;
  String date;
  String editor;
  String image;
  String title;
  bool isBook; // Add this field

  // Factory constructor to create an Articel object from a JSON map
  factory Articel.fromJson(Map<String, dynamic> json) {
    return Articel(
      title: json['title'],
      image: json['image'],
      creator: json['creator'],
      editor: json['editor'],
      date: json['date'],
      content: json['content'],
      isBook: json['isBook'], // Add this line
    );
  }

  // Convert the Articel object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'creator': creator,
      'editor': editor,
      'date': date,
      'content': content,
      'isBook': isBook, // Add this line
    };
  }
}

List<Articel> favoritArticel = [];

List<Articel> dummyArticelData = [
  Articel(
      isBook: false,
      title: 'Perhatian! Berikut 8 tanda-tanda gejala umum stunting pada anak',
      image:
          'https://images.unsplash.com/photo-1566004100631-35d015d6a491?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
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
  Articel(
      isBook: false,
      title:
          'Pentingnya Kecukupan Gizi pada Balita: Fondasi untuk Masa Depan yang Sehat',
      image:
          'https://images.unsplash.com/photo-1495711497737-cb9591f6dd5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80',
      creator: 'Puskesmas Lumut',
      editor: 'Dr Vincent Wong',
      date: '2 Agustus 2023',
      content: """
Pentingnya Kecukupan Gizi pada Balita: Fondasi untuk Masa Depan yang Sehat

Balita, atau anak usia dini, merupakan fase pertumbuhan dan perkembangan yang sangat penting dalam kehidupan seorang individu. Pada tahap ini, asupan gizi yang tepat memainkan peran kunci dalam membentuk fondasi kesehatan dan perkembangan selanjutnya. Kecukupan gizi pada balita berdampak langsung pada kualitas hidupnya dan potensi kesuksesannya di masa depan. Berikut ini adalah beberapa alasan mengapa kecukupan gizi pada balita begitu penting:

1. Pertumbuhan Optimal: Balita sedang dalam fase pertumbuhan yang pesat. Asupan gizi yang memadai, termasuk protein, vitamin, mineral, dan zat-zat penting lainnya, diperlukan untuk mendukung pertumbuhan tulang, otot, dan organ internal dengan optimal. Kekurangan gizi pada periode ini dapat menghambat pertumbuhan dan mempengaruhi tinggi badan serta perkembangan fisiknya.

2. Perkembangan Kognitif: Nutrisi yang tepat juga berpengaruh pada perkembangan otak. Zat-zat seperti asam lemak omega-3, zat besi, dan vitamin B kompleks membantu dalam pembentukan dan fungsi otak. Kekurangan nutrisi ini dapat menyebabkan masalah perkembangan kognitif dan intelektual pada balita.

3. Sistem Kekebalan Tubuh: Gizi yang cukup memainkan peran penting dalam memperkuat sistem kekebalan tubuh balita. Nutrisi seperti vitamin A, C, dan D, serta seng, memainkan peran dalam menjaga daya tahan tubuh terhadap infeksi dan penyakit. Balita yang kekurangan nutrisi berisiko lebih tinggi terkena infeksi dan penyakit.

Dalam kesimpulannya, kecukupan gizi pada balita adalah investasi dalam masa depan mereka. Dengan memberikan nutrisi yang tepat, kita tidak hanya membantu mereka tumbuh secara fisik, tetapi juga memberikan fondasi yang kuat untuk perkembangan intelektual dan kesehatan mereka di masa depan. Oleh karena itu, upaya untuk menjaga kecukupan gizi pada balita tidak boleh diabaikan demi menciptakan generasi yang sehat dan berprestasi

"""),
  Articel(
      isBook: false,
      title: 'Peran Orang Tua yang Maha Penting dalam Perkembangan Balita',
      image:
          'https://images.unsplash.com/photo-1470116945706-e6bf5d5a53ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
      creator: 'Puskesmas Lumut',
      editor: 'Abdullah Fathan',
      date: '3 Agustus 2023',
      content: """
Periode balita, yang meliputi usia 1 hingga 3 tahun, adalah masa penting dalam perkembangan seorang anak. Selama fase ini, anak mengalami pertumbuhan fisik yang pesat, perkembangan kognitif yang signifikan, dan pembentukan dasar-dasar sosial dan emosional. Dalam proses ini, peran orang tua memegang peranan sentral yang tak tergantikan. Berikut ini adalah mengapa peran orang tua sangat penting dalam perkembangan balita:

1. Fondasi untuk Pembelajaran Masa Depan: Orang tua adalah guru pertama anak-anak. Mereka memainkan peran utama dalam memperkenalkan anak pada berbagai konsep dan keterampilan dasar, seperti berbicara, berjalan, membaca, dan menulis. Interaksi sehari-hari dengan orang tua menjadi dasar bagi kemampuan belajar anak di masa depan.

2. Pembentukan Nilai dan Etika: Orang tua membantu membentuk sistem nilai dan etika anak. Melalui contoh dan arahan, anak-anak belajar tentang hal-hal seperti rasa hormat, empati, tanggung jawab, dan toleransi. Nilai-nilai ini membentuk dasar bagi perilaku dan interaksi sosial anak di kemudian hari.

3. Pengembangan Bahasa dan Kognisi: Selama masa balita, anak mengalami perkembangan bahasa yang pesat. Orang tua berperan dalam memperkaya kosakata anak, merangsang percakapan, dan mendorong pemahaman bahasa. Ini memberikan dasar penting untuk kemampuan berpikir abstrak dan pemecahan masalah di masa depan.

Dalam kesimpulannya, peran orang tua dalam perkembangan balita tidak bisa diabaikan. Mereka adalah pendukung utama anak dalam menghadapi tantangan dan peluang yang datang dalam fase berharga ini. Melalui cinta, dukungan, pengajaran, dan teladan yang diberikan oleh orang tua, anak dapat tumbuh menjadi individu yang sehat, cerdas, dan berkarakter, siap menghadapi dunia dengan percaya diri.
"""),
  Articel(
      isBook: false,
      title: 'Mengamankan Masa Depan: Pentingnya Imunisasi untuk Balita',
      image:
          'https://images.unsplash.com/photo-1598300188480-626f2f79ab8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      creator: 'Puskesmas Lumut',
      editor: 'Adit',
      date: '5 Agustus 2023',
      content: """
Imunisasi telah menjadi tonggak penting dalam dunia medis dan kesehatan, tidak hanya untuk individu tetapi juga untuk masyarakat secara keseluruhan. Di tengah perkembangan teknologi dan pengetahuan medis, imunisasi balita muncul sebagai salah satu pencapaian terbesar dalam pencegahan penyakit dan kematian anak-anak. Inilah mengapa pentingnya imunisasi bagi balita tak bisa diabaikan:

1. Perlindungan terhadap Penyakit Serius: Imunisasi memberikan perlindungan terhadap penyakit serius yang bisa menyebabkan komplikasi bahkan kematian pada balita. Penyakit seperti polio, difteri, tetanus, pertusis, campak, dan rubella adalah contoh penyakit yang dapat dicegah melalui imunisasi. Dengan memvaksinasi anak, kita memberikan perlindungan terhadap ancaman penyakit yang bisa mengancam kehidupan mereka.

2. Mencegah Penyebaran Penyakit: Imunisasi bukan hanya tentang melindungi individu yang divaksinasi, tetapi juga tentang mencegah penyebaran penyakit di masyarakat. Konsep kekebalan kelompok (herd immunity) berarti jika cukup banyak orang di suatu komunitas divaksinasi, maka orang-orang yang tidak dapat divaksinasi (misalnya, karena alergi atau kondisi medis tertentu) juga dilindungi, karena risiko penularan penyakit menjadi lebih rendah.

3. Mencegah Komplikasi dan Kecacatan: Beberapa penyakit yang dapat dicegah melalui imunisasi dapat menyebabkan komplikasi serius atau cacat seumur hidup. Contohnya, campak dapat menyebabkan pneumonia, otak bengkak, atau kerusakan pada mata. Imunisasi membantu menghindarkan balita dari risiko komplikasi yang dapat mempengaruhi kualitas hidup mereka.
"""),
  Articel(
      isBook: false,
      title:
          'Momen Berharga: Bermain dengan Orang Tua bagi Perkembangan Balita',
      image:
          'https://images.unsplash.com/photo-1614113036347-9f60df80730a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=897&q=80',
      creator: 'Puskesmas Lumut',
      editor: 'Mahardika Setya',
      date: '9 Agustus 2023',
      content: """
Bermain adalah bahasa universal bagi anak-anak. Bagi balita, bermain bukan hanya aktivitas menyenangkan, tetapi juga merupakan cara utama mereka belajar, menjelajahi dunia, dan membangun keterampilan penting. Namun, yang membuat bermain semakin istimewa adalah saat orang tua turut terlibat. Interaksi antara orang tua dan balita dalam bermain memiliki dampak luar biasa pada perkembangan fisik, kognitif, sosial, dan emosional anak. Berikut adalah mengapa bermain dengan orang tua memiliki peran penting dalam masa pertumbuhan balita:

1. Pembelajaran melalui Aktivitas: Saat bermain dengan anak, orang tua memungkinkan mereka untuk belajar melalui kegiatan yang bersifat menyenangkan dan interaktif. Balita mengamati, mengeksplorasi, dan bereksperimen sambil bermain, yang membantu memperluas pemahaman mereka tentang dunia sekitar.

2. Pengembangan Keterampilan Motorik: Bermain dengan mainan, merangkak, menjalankan, atau bahkan merobek kertas dalam aktivitas kreatif membantu pengembangan keterampilan motorik kasar dan halus balita. Ini sangat penting untuk perkembangan fisik dan koordinasi geraknya.

3. Keterampilan Sosial dan Emosional: Bermain bersama dengan orang tua membantu balita memahami konsep berbagi, bergantian, dan bekerja dalam kelompok. Ini membantu mengembangkan keterampilan sosial dan emosional seperti empati, kerjasama, dan pengendalian diri.

4. Bahasa dan Komunikasi: Berinteraksi dengan balita melalui bermain mendorong pengembangan bahasa dan komunikasi mereka. Orang tua dapat menggunakan kesempatan ini untuk memperkaya kosakata anak, mengajarkan frasa baru, dan merangsang percakapan yang kreatif.
"""),
  Articel(
      isBook: false,
      title: 'Mengutamakan Kesehatan Anak Kecil: Landasan Masa Depan yang Kuat',
      image:
          'https://images.unsplash.com/photo-1502781252888-9143ba7f074e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80',
      creator: 'Puskesmas Lumut',
      editor: 'Mahardika Setya',
      date: '10 Agustus 2023',
      content: """
Kesehatan anak kecil adalah salah satu prioritas utama dalam pembentukan masa depan yang sehat dan berkelanjutan. Fase ini merupakan periode pertumbuhan dan perkembangan yang kritis dalam kehidupan anak, yang memiliki dampak jangka panjang pada kesehatan dan kualitas hidupnya di kemudian hari. Dengan memberikan perhatian khusus pada aspek-aspek kesehatan, kita dapat membantu anak-anak tumbuh menjadi individu yang kuat dan siap menghadapi tantangan dunia dengan percaya diri. Berikut adalah mengapa kesehatan anak kecil begitu penting:

1. Fondasi Pertumbuhan Fisik dan Mental: Anak kecil sedang dalam tahap pertumbuhan fisik yang pesat. Nutrisi yang tepat, aktivitas fisik yang cukup, dan tidur yang memadai adalah kunci bagi pertumbuhan yang optimal. Selain itu, merangsang perkembangan kognitif melalui pembelajaran dan eksplorasi adalah penting untuk membentuk dasar yang kuat bagi perkembangan otak.

2. Pencegahan Penyakit: Kesehatan anak kecil melibatkan pencegahan penyakit yang dapat mengganggu pertumbuhan dan perkembangan. Imunisasi rutin dan pola makan sehat berperan dalam membentuk sistem kekebalan tubuh yang kuat dan melindungi anak dari ancaman penyakit serius.

3. Kesehatan Emosional: Kesehatan emosional anak kecil sama pentingnya dengan kesehatan fisik. Pembangunan kemampuan untuk mengenali dan mengelola emosi, serta membangun kesejahteraan mental, merupakan aspek penting dalam perkembangan anak. Memberikan dukungan emosional dan lingkungan yang stabil membantu anak merasa aman dan terjaga keseimbangan emosinya.

4. Pembentukan Kebiasaan Sehat: Masa anak kecil adalah saat yang tepat untuk membentuk kebiasaan sehat sepanjang hidup. Ini termasuk menjaga pola makan seimbang, menjalani gaya hidup aktif, menjaga kebersihan diri, dan tidur yang cukup. Kebiasaan sehat yang ditanamkan sejak dini akan membantu anak tumbuh menjadi individu yang menjalani hidup dengan gaya hidup yang sehat.

Dalam rangka menjaga kesehatan anak kecil, orang tua dan wali memiliki peran yang sangat penting. Mereka adalah pilar dukungan pertama dalam membentuk gaya hidup sehat, memberikan nutrisi yang tepat, dan menciptakan lingkungan yang mendukung perkembangan optimal. Dengan menjadikan kesehatan anak kecil sebagai prioritas utama, kita memberikan bekal bagi mereka untuk tumbuh menjadi individu yang sehat, bahagia, dan sukses di masa depan.
""")
];
