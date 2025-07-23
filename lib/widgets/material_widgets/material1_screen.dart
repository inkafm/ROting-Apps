import 'package:flutter/material.dart';
import 'package:topology_app/models/content_model.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Material1Screen extends StatelessWidget {
  const Material1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Content> contents = [
      Content(
        value: "Proses penting dalam komunikasi data adalah routing pada jaringan komputer karena menentukan keberhasilan perpindahan paket data antar jaringan komputer, di mana prosesnya memerlukan identitas dengan berupa alamat atau yang biasa disebut sebagai IP (Internet Protocol) address. Komunikasi data dalam jaringan pada intinya menentukan aturan proses pengantaran paket data dari satu sumber ke tujuan secara akurat, mekanisme pengantaran ini dinamakan routing. Routing atau perutean adalah suatu proses pada paket yang meneruskan jaringan dari satu jaringan ke jaringan lainnya melalui internet. Atau dapat disebutkan sebagai suatu aturan yang digunakan untuk mendapatkan rute dari satu jaringan ke jaringan yang lain. Sebagai contoh misal seseorang ingin mengirim paket dari jaringan A ke jaringan B, dengan begitu tugas routing yaitu mencari jalur tercepat untuk mencapai tujuan akhir, dan bukan hanya mencari jalan tercepat melainkan mencari jalan terbaik hingga sampai jaringan yang dituju.",
      ),
      Content(
        value: "Routing dapat merujuk pada suatu cara dari beberapa jaringan yang terhubung sehingga jaringan internet dapat ditransmisikan dari satu jaringan ke jaringan lainnya. Routing adalah proses dimana suatu router meneruskan paket ke jaringan yang dituju. Suatu router membuat keputusan berdasarkan IP address yang dituju oleh paket. Semua router menggunakan IP address tujuan untuk mengirim paket. Agar keputusan routing tersebut benar, router harus belajar bagaimana untuk mencapai tujuan. Ketika router menggunakan routing dinamis, informasi ini dipelajari dari router yang lain. Ketika menggunakan routing statis, seorang network administrator mengkonfigurasi informasi tentang jaringan yang ingin dituju secara manual.",
      ),
      Content(
        value: "Router adalah suatu alat yang digunakan untuk menerima paket yang ditujukan untuk jaringan di luar jaringan pertama dan akan meneruskan paket yang diterima ke router lain sampai mereka mencapai tujuan. Misalnya, berupa ukuran jaringan seperti bandwidth yang tersedia, daya komputasi di router, merek dan model router, serta protokol yang digunakan dalam jaringan. Router dapat yang dipasang pada jaringan perumahan, kantor, warnet, atau instansi lainnya untuk menghubungkan dengan internet. Router umumnya memiliki kemampuan untuk memblokir broadcast storm yang dapat memperlambat kinerja jaringan. Router sering disalah artikan dengan switch, namun kedua alat ini memiliki fungsi yang berbeda, yaitu pada router ia berfungsi sebagai penghubung jalan antara jalan jaringan satu dengan jalan jaringan lainnya. Sementara pada switch, ia berfungsi seperti jalanan yaitu mengumpulkan jaringan-jaringan yang ada ke dalam satu jaringan dan membentuk LAN (Local Action Network).",
      ),
      Content(
        value: "Sedangkan PC router merupakan router yang dibuat dari sebuah PC yang dijadikan sebagai fungsi router yang dijalankan dengan sistem operasi dan sistem operasi yang kebanyakan digunakan yaitu sistem operasi Linux sehingga biasa disebut dengan Linux Based Router. Agar router dapat mengetahui bagaimana meneruskan paket-paket ke alamat yang dituju dengan mengunakan jalur terbaik, router menggunakan peta atau tabel routing. Tabel routing adalah tabel yang memuat seluruh informasi IP Address dari interfaces router yang lain. sehingga router yang satu dengan router lainnya bisa saling berkomunikasi. Tabel IP merupakan salah satu firewall popular dan powerfull yang tersedia di sistem operasi Linux. Fungsi yaitu untuk konfigurasi, merawat dan memeriksa tabel aturan tentang filter paket IP yang terdapat di kernel Linux. Adapun dalam tabel IP memiliki empat aturan yaitu:",
        list: [
          "Filter digunakan untuk melakukan pemfilteran/penyaringan paket data apakah paket tersebut akan di DROP, LOG, ACCEPT atau REJECT.",
          "Nat digunakan untuk melakukan Network Address Translation yang merupakan pengganti alamat asal atau tujuan dari paket data.",
          "Mangle digunakan untuk melakukan penghalusan (mangle) paket data seperti TTL, TOS, dan MARK.",
          "Raw digunakan untuk mengkonfigurasi pengecualian dari connection tracking bersama dengan NOTRACK."
        ]
      )
    ];

    final _videoController1 = YoutubePlayerController.fromVideoId(
      videoId: 'cfp1Qw3WIa0',
      autoPlay: false,
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          for ( var content in contents ) Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRichText(text: content.value),
                if (content.list != null) SizedBox(height: 10),
                // List Sub Content
                if (content.list != null) for(int index = 0; index < content.list!.length; index++) Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Text(
                            (index + 1).toString() + ".",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Container(
                          child: Text(
                            content.list![index],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: YoutubePlayer( 
              controller: _videoController1,
              aspectRatio: 16 / 9,
            ),
          ),
        ],
      ),
    );
  }
}