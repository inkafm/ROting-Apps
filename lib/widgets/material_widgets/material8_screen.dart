import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Material8Screen extends StatelessWidget {
  const Material8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final _videoController1 = YoutubePlayerController.fromVideoId(
      videoId: 'Rl73gQWNUa0',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomRichText(
            text: "Troubleshooting merupakan istilah yang erat kaitannya dengan komputer yang mengalami masalah. Definisi troubleshooting adalah upaya untuk memperbaiki kesalahan atau masalah dalam sistem komputer yang dilakukan secara logis dan sistematis. Upaya ini dilakukan agar sistem dapat berfungsi kembali dengan lancer. Saat melakukan troubleshoopting, seorang programmer akan menerapkan pendekatan isolasi masalah, yaitu dengan mengeliminasi atau menghilangkan kemungkinan masalah atau sejumlah komponen yang dicurigai menjadi penyebab error atau trouble yang dilakukan secara bertahap. Tujuan dilakukannya troubleshooting adalah untuk memastikan apakah kendala masih tetap ada atau sudah hilang.  Proses ini digunakan untuk memperbaiki masalah hardware, software, dan termasuk permasalahan dalam jaringan komputer. Prinsip troubleshooting adalah “mendiagnosa” dari masalah umum terlebih dahulu, kemudian mempersempit diagnosa tersebut ke permasalahan yang lebih khusus (spesifik)."
          ),
          CustomRichText(
            text: "Setelah router dikonfigurasi, langkah selanjutnya adalah hal yang sangat penting untuk melakukan verifikasi apakah table routing dan proses routingnya bekerja dengan baik. Karena proses verifikasi table routing berguna untuk melakukan pengecekan (toubleshoting) masalah yang terjadi pada jaringan. Perintah untuk melihat konfigurasi yang sedang aktif dan untuk mem-verifikasi routing statis adalah show running- config dan show ip route untuk menampilkan informasi pada tabel routing."
          ),
          CustomRichText(
            text: "Berikut ini adalah contoh langkah-langkah untuk melakukan verifikasi konfigurasi dan troubleshooting pada routing statis adalah:"
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "1. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Masukkan perintah show running-config dalam privileged mode untuk melihat konfigurasi yang sedang aktif. Gunakan perintah enable / en untuk masuk ke privileged mode atau gunakan perintah exit apabila masih berada pada mode global configuration.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "2. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Verifikasi routing statis yang telah dimasukkan.  Jika rute tidak benar, maka diperlukan kembali lagi ke mode global config untuk menghapus routing statis yang salah dan masukkan routing yang benar.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "3. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Masukkan perintah show ip route")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "4. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Verifikasi lagi, apakah table routing yang dimasukkan sudah sesuai dengan tujuan dari hasil perintah tersebut.")
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Pada kasus ini diberikan contoh troubleshoting pada konfigurasi routing statis pada router MM untuk mengakses jaringan yang melalui router TKJ dan RPL, seperti yang dilihat pada gambar di bawah ini."
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/8/image_1.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Pada konfigurasi di router TKJ, jaringan 192.16.1.0 tidak dapat mencapai jaringan 192.16.3.0 melalui router RPL setelah ditest dengan menggunakan perintah ping dari router TKJ ke salah satu node yang berada pada jaringan 192.16.3.0."
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/8/image_2.png",
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/8/image_3.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Lakukan ping ke node pada jaringan 192.16.3.0 melalui mode privileged pada router TKJ. Pada gambar di bawah ini menunjukkan perintah ping yang gagal, sekarang gunakan perintah traceroute dari TKJ ke alamat yang digunakan pada perintah ping."
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/8/image_4.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Terlihat pada gambar bahwa traceroute mengalami kegagalan.  Traceroute menandakan bahwa paket ICMP dikembalikan oleh router MM tapi tidak dari router RPL. Hal ini berarti masalah terjadi antara router MM atau router RPL."
          ),
          CustomRichText(
            text: "Coba lakukan kembali ping dari router MM ke node pada jaringan 192.16.1.0 yang terhubung ke router TKJ dan ke node pada jaringan 192.16.1.0 yang terhubung ke router RPL. Perintah ping ini seharusnya berhasil karena router MM terhubung langsung ke TKJ dan RPL. Apabila perintah ping mengalami kegagalan, berarti permasalahan terjadi pada konfigurasi routing pada router MM. maka langkah yang harus dilakukan adalah mengecek dan mengkonfigurasi ulang tabel routing yang telah dibuat sebelumnya pada router MM. Hal yang sama juga dilakukan apabila yang terjadi adalah perintah ping dari router MM berhasil, maka konfigurasi ulang harus dilakukan pada router RPL."
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/8/image_5.png",
                ),
              ),
            ],
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