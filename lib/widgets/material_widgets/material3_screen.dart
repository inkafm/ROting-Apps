import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Material3Screen extends StatelessWidget {
  Material3Screen({super.key});

    static List content1 = [
      {
        "title": "Routing Statis",
        "content": "Routing statis merupakan jenis routing yang dilakukan oleh administrator atau pengelola jaringan untuk mengkonfigurasikan informasi tentang jaringan yang dituju secara manual. Routing statis juga dapat dikatakan sebagai suatu mekanisme routing yang bergangtung pada tabel routing dengan konfigurasi manual. Routing statis harus dikonfigurasi secara manual dan di-maintain secara terpisah karena tidak melakukan pertukaran informasi tabel routing secara dinamis dengan router-router lainnya. Konsep dari teknik routing statis dapat dibagi menjadi 3 bagian:",
      }
    ];

    final _videoController1 = YoutubePlayerController.fromVideoId(
      videoId: '5VaVfcUlE3U',
      autoPlay: false,
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    final _videoController2 = YoutubePlayerController.fromVideoId(
      videoId: 'qHGBZTn3LWo',
      autoPlay: false,
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    renderContent1(index, title, content) {
      return Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text((index + 1).toString() + "."),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: Text(
                      title,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (content != '') Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text(
                content,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
            )
          ]
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // for(int index = 0; index < content1.length; index++) renderContent1(
          //   index,
          //   content1[index]['title'],
          //   content1[index]['content']
          // ),
          Text(
            "1. Routing Statis",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Nunito',
            ),
          ),
          CustomRichText(
            text: "Routing statis merupakan jenis routing yang dilakukan oleh administrator atau pengelola jaringan untuk mengkonfigurasikan informasi tentang jaringan yang dituju secara manual. Routing statis juga dapat dikatakan sebagai suatu mekanisme routing yang bergangtung pada tabel routing dengan konfigurasi manual. Routing statis harus dikonfigurasi secara manual dan di-maintain secara terpisah karena tidak melakukan pertukaran informasi tabel routing secara dinamis dengan router-router lainnya. Konsep dari teknik routing statis dapat dibagi menjadi 3 bagian:"
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "a. Administrator jaringan yang mengkonfigurasi router"),
                CustomText(text: "b. Router melakukan routing berdasarkan informasi dalam tabel routing"),
                CustomText(text: "c. Routing statis digunakan untuk melewatkan paket data. Seorang administrator harus menggunakan perintah IP route secara manual untuk mengkonfiguras router dengan routing statis."),
              ],
            ),
          ),
          CustomRichText(
            text: "Konfigurasi routing statis dilakukan secara manual oleh seorang networking administrator/ administrator jaringan. Administrator jaringan bertugas untuk memasukkan atau menghapus rute statis jika terjadi perubahan topologi. Setiap entri tabel yang ada disetiap router akan diisi oleh administrator jaringan yang terhubung ke jaringan, serta melakukan penghapusan pada jalur statis ketika topologi berubah."
          ),
          CustomRichText(
            text: "Pada jaringan skala besar, jika tetap menggunakan routing statis, maka akan sangat tidan efisien bagi administrator jaringan untuk melakukan update table routing. Karena itu routing statis hanya mungkin dilakukan untuk jaringan skala kecil. Sedangkan routing dinamis bisa diterapkan di jaringan skala besar dan membutuhkan kemampuan lebih dari administrator."
          ),
          CustomRichText(text: "Berikut ini adalah cara kerja dari routing statis:"),
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
                      child: CustomText(text: "Konfigurasi Routing Statis")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah pertama dalam menggunakan routing statis adalah konfigurasi. Untuk konfigurasi routing statis, administrator jaringan harus melakukan penambahan rute secara manual ke dalam tabel routing pada router. Tabel routing berfungsi sebagai daftar rute yang akan digunakan oleh router untuk mengarahkan paket data ke tujuan akhir yang diinginkan.")
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
                      child: CustomText(text: "Tabel Routing Statis")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Setelah konfigurasi selesai, administrator akan mempunyai tabel routing statis. Tabel ini terdiri dari Network ID dan Next Hop. Network ID adalah alamat jaringan tujuan akhir dari paket data yang akan diarahkan, sementara Next Hop adalah alamat IP dari router yang akan digunakan untuk mengirimkan paket data ke tujuan akhir tersebut.")
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
                      child: CustomText(text: "Proses Routing Statis")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Ketika paket data tiba di router dari jaringan lokal, proses routing statis dimulai. Router akan mencocokkan alamat tujuan akhir pada paket data dengan entri yang terdapat dalam tabel routing statis. Tujuannya adalah menentukan rute yang sesuai untuk mengirimkan paket data tersebut.")
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
                      child: CustomText(text: "Penentuan Next Hop")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Setelah menemukan entri yang cocok dalam tabel routing, router akan menentukan Next Hop. Next Hop adalah alamat IP dari router berikutnya yang harus dilewati oleh paket data untuk mencapai tujuan akhir.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "5. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Pengiriman Paket Data")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Dengan Next Hop yang telah ditentukan, router akan mengirimkan paket data ke router dengan alamat Next Hop ini. Ini adalah langkah penting yang mengarahkan paket data ke arah yang benar menuju tujuan akhir.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "6. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Proses Berulang")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Proses ini akan terus berlanjut selama ada paket data yang perlu diarahkan. Router akan terus mengidentifikasi rute yang sesuai dan mengirimkan paket data ke router berikutnya sesuai dengan informasi dalam tabel routing statis. Proses terus berulang hingga akhirnya paket data mencapai tujuan akhir yang diinginkan.")
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomRichText(text: "Kelebihan dan kekurangan dari routing statis:"),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "A. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Kelebihan", weight: 'bold')
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "1) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Beban kerja router terbilang lebih ringan dibandingkan dengan routing dinamis. Karena pada saat konfigurasi router hanya mengupdate sekali saja ip table yang ada.")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "2) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Pengiriman paket data menjadi lebih cepat karena jalur atau rute sudah diketahui terlebih dahulu.")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "3) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Deteksi dan isolasi kesalahan pada topologi jaringan lebih mudah.")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "4) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Terdapat keamanan network, dikarenakan routing statis hanya mengandung informasi yang dimasukkan secara manual.")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "5) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Meringankan kinerja processor router")
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "B. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Kekurangan", weight: 'bold')
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "1) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Hanya dapat digunakan untuk jaringan berskala kecil.")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "2) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Administrator jaringan harus mengetahui semua informasi dari masing-masing router yang digunakan.")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "3) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Bandwidth yang dibutuhkan lebih besar")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "4) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Semakin besar topology semakin rumit karena konfigurasi router dilakukan dengan cara manual atau menginput satu persatu command yang diperlukan. Oleh karena itu banyak router yang harus diinput satu persatu (manual), faktor human error atau kesalahan input akan lebih sering terjadi.")
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 10),
          CustomRichText(text: "Cara mengkonfigurasi router menggunakan teknik routing statis adalah dengan memasukkan semua alamat jaringan yang tidak terhubung secara langsung dengan router beserta subnetmask dan next hop-nya pada tabel routing."),
          CustomRichText(text: "Next Hop disini dapat dianalogikan sebagai “Pintu Gerbang” jaringan, artinya Next Hop adalah IP Address port interface router yang terhubung secara langsung dengan router yang dikonfigurasi."),
          CustomRichText(text: "Teknik routing statis sangat sesuai apabila digunakan pada jaringan komputer dengan segmen yang sedikit, karena administrator jaringan tidak perlu memasukkan terlalu banyak Network Address, Subnetmask, dan Next Hop ke dalam tabel routing. Sebaliknya, jika digunakan pada jaringan skala besar yang tentunya memiliki jumlah segmen yang banyak, sehingga metode ini tidak efisien untuk digunakan."),
          CustomRichText(text: "Berikut ini contoh jaringan sederhana dengan 3 router yang dikonfigurasi dengan menggunakan teknik routing statis."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/3/routing_statis_1.png",
                ),
              ),
            ],
          ),
          CustomRichText(text: "Router MM harus dikonfigurasi sehingga dapat mencapai jaringan 102.16.1.0 dan jaringan 102.16.3.0. Kedua jaringan subnet masknya 255.255.255.0. Paket yang tujuannya ke jaringan 102.16.1.0 harus dirutekan ke TKJ dan paket yang ditujukan ke jaringan 102.16.3.0 harus dirutekan ke RPL. Dalam hal ini routing statis bisa digunakan."),
          CustomRichText(text: "Kedua routing statis tersebut akan dikonfigurasi menggunakan interface lokal sebagai gateway ke jaringan yang dituju."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/3/routing_statis_2.png",
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
                  "assets/images/material/3/routing_statis_3.png",
                ),
              ),
            ],
          ),
          CustomRichText(text: "Dua routing statis yang sama juga dapat dikonfigurasi dengan next-hop address sebagai gateway. Seperti yang ditunjukkan oleh gambar 2.6. Rute pertama ke jaringan 102.16.1.0 dengan gateway ke 102.16.10.1. Sedangkan rute kedua ke jaringan 102.16.3.0 dengan gateway ke 102.16.30.1. Administrative distance tidak digunakan, sehingga defaultnya bernilai 1."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/3/routing_statis_4.png",
                ),
              ),
            ],
          ),
          CustomRichText(text: "Dan berikut ini adalah langkah-langkah untuk melakukan konfigurasi routing statis adalah sebagai berikut:"),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "a. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 1, tentukan dahulu prefix jaringan subnet mask dan address. Address bisa saja merupakan interface local atau next hop address yang menuju tujuan.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "b. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 2, masuk ke mode global configuration.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "c. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 3, ketik ip route dengan prefix dan mask yang diikuti dengan address seperti yang sudah ditentukan di langkah 1. Sedangkan untuk administrative distance bersifat tambahan, boleh digunakan boleh tidak.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "d. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 4, ulangi langkah 3 untuk semua jaringan yang dituju yang telah ditentukan pada langkah 1.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "e. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 5, keluar dai mode global configuration.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "f. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 6, gunakan perintah copy running-config startup-config untuk menyimpan konfigurasi yang sedang aktif ke NVRAM.")
                    )
                  ],
                ),
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

          SizedBox(height: 10),

          // Routing Dinamis
          Text(
            "2. Routing Dinamis",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Nunito',
            ),
          ),
          CustomRichText(text: "Routing dinamis adalah routing yang membuat tabel routing secara otomatis oleh Routing Protocol, dengan membaca lalu lintas jaringan dan tentu juga dengan saling berhubung dengan router yang lain. Dinamakan routing dinamis karena router akan dapat menentukan secara otomatis lewat mana suatu paket dengan sebuah tujuan akan dikirimkan. Pada routing dinamis, protokol routing akan saling bertukar dan menyimpannya secara otomatis. Informasi dapat berupa alamat jaringan, subnet mask, dan jalur mana saja yang dilalui. Sehingga administrator tidak perlu mengisi tabel routing secara manual walaupun nantinya terjadi perubahan pada topologi jaringan. Administrator jaringan hanya perlu mengisi informasi Network Address dari jaringan komputer yang terhubung secara langsung (directly connected) dengan router. Pada hal ini jaringan yang terhubung secara langsung juga termasuk pada jaringan segmen yang berada di antara next hop antar 2 jaringan yang saling terhubung oleh router. Cuntuk lebih detailnya perhatikan pada gambar di bawah ini:"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/3/routing_dinamis_1.png",
                ),
              ),
            ],
          ),
          CustomRichText(text: "Ketika kita akan mengkonfigurasi router TKJ, maka alamat jaringan yang harus dimasukkan oleh administrator adalah 192.16.1.0 dan 192.16.10.0. Alamat jaringan 192.16.10.0 merupakan alamat yang menujukkan “jarak” atau hop diantara 2 router yang menghubungkan 2 jaringan yang berbeda. Jadi ketika administrator sedang mengkonfigurasi router secara dinamis, mereka juga harus memasukkan alamat “hop” ini tadi ke dalam konfigurasinya."),
          CustomRichText(text: "Routing dinamis merupakan proses dimana secara otomatis router dapat menghasilkan tabel routing berdasarkan router yang terhubung dan lalu lintas jaringan. Apabila routing statis dilakukan secara manual oleh administrator jaringan, maka routing dinamis memiliki protokol yang secara otomatis dapat mengatur router sehingga dapat memberikan informasi terkait koneksi antar router dengan jaringan."),
          CustomRichText(text: "Routing dinamis sangat sesuai digunakan dalam jaringan komputer skala menengah-besar. Karena tentunya akan sangat merepotkan apabila harus melakukan konfigurasi routing dengan menggunkan teknik routing statis yaitu dengan membuat tabel routing secara manual."),
          CustomRichText(text: "Seorang administrator memilih suatu protokol routing dinamis berdasarkan keadaan topologi jaringannya. Misalnya berapa ukuran dari jaringan, bandwidth yang tersedia, proses power dalam router, merek dan model dari router, dan protokol yang digunakan dalam jaringan."),
          CustomRichText(text: "Routing dinamis memiliki berbagai macam protokol seperti OSPF atau Open Shortest Path First, RIP atau Routing Information Protocol, IGRP atau Internal Gateway Routing Protocol, dan BGP atau Border Gateway Protocol. Salah satu protokol routing dinamis yang biasa digunakan untuk mengkonfigurasi router adalah RIP (Routing Information Protocol)."),
          CustomRichText(text: "Berikut ini merupakan kelebihan dan kekurangan dari routing dinamis:"),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "A. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Kelebihan", weight: 'bold')
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "1) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Hanya mengenal alamat yang terhubung langsung dengan routernya")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "2) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Proses konfigurasi jaringan lebih cepat")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "3) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Jalur ditentukan secara otomatis oleh sistem")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "4) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Tidak perlu mengetahui semua network yang ada")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "5) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Cocok digunakan untuk jaringan yang berskala besar/luas")
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "B. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Kekurangan", weight: 'bold')
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "1) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Beban kerja router menjadi lebih berat karena selalu memperbaharui Tabel Routing setiap saat ketika ada perubahan")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "2) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Beban CPU Router akan naik seiring dengan table routing yang banyak")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "3) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Bandwidth yang dibutuhkan lebih besar")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "4) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Keamanan jaringan berkurang dibanding routing statis")
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomText(text: "5) ")
                          ),
                          Expanded(
                            flex: 10,
                            child: CustomText(text: "Membutuhkan RAM yang lebih besar untuk menentukan jalur terbaik saat terjadi down")
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomRichText(text: "Berdasarkan penjelasan di atas dapat disimpulkan bahwa perbedaan routing statis dan dinamis yaitu dari mekanisme routingnya, dimana static routing dilakukan secara manual yang dilakukan oleh networking administrator sedangkan dynamic routing memiliki routing protokol yang sudah otomatis sehingga tidak perlu memasukkan entry jaringan baru oleh networking administrator pada setiap router. Static routing bisa digunakan dalam skala kecil, sedangkan dynamic routing cocok digunakan untuk keperluan pembangunan jaringan dalam skala besar dikarenakan proses routing akan berjalan secara otomatis tanpa perlu membuat dan menghapus tabel routing oleh seorang administrator."),
          SizedBox(height: 10),

          // Routing Default
          Text(
            "3. Routing Default",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Nunito',
            ),
          ),
          CustomRichText(text: "Routing default adalah salah satu cara yang paling mudah dalam melakukan routing karena tanpa menggunakan atau menambahkan identitas jaringan yang lebih spesifik. Jadi fungsi routing default ini yaitu sebagai akses jaringan keseluruhan. Misalnya yaitu digunakan untuk mengirim paket secara manual, sering digunakan pada jaringan yang hanya memiliki satu jalur keluar atau hanya bisa digunakan di lokal saja. Default routing digunakan untuk merutekan paket dengan tujuan yang tidak sama dengan routing yang ada dalam table routing. Secara tipikal router dikonfigurasi dengan cara routing default untuk trafik internet. Routing default secara aktual menggunakan format:"),
          CustomText(text: "ip route 0.0.0.0 0.0.0.0 [next-hop-address | outgoing interface]", weight: 'bold'),
          CustomRichText(text: "Mask 0.0.0.0, secara logika jika kita AND-kan dengan IP address tujuan selalu menunjuk ke jaringan 0.0.0.0. Jika paket tidak cocok dengan rute yang ada dalam table routing, maka paket akan dirutekan ke jaringan 0.0.0.0. Berikut ini adalah langkah-langkah untuk mengkonfigurasi routing default:"),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "a. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 1, masuk ke priviliged mode dengan mengtikkan perintah enable/ en")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "b. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 2, masuk ke menu global configuration dengan mengetikkan perintah configure terminal/ conf t.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "c. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 3, ketik perintah ip route dengan 0.0.0.0 sebagi prefix dan 0.0.0.0 sebagai mask. Alamat tambahan untuk routing default dapat berupa address dari local interface yang terhubung langsung ke jaringan luar atau IP address dari next-hop router.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "d. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 4, keluar dari mode global configuration.")
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "e. ")
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Langkah 5, gunakan perintah copy running-config startup-config untuk menyimpan konfigurasi yang sedang jalan ke NVRAM.")
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          CustomRichText(text: "Pada pembahasan sebelumnya, routing statis yang dikonfigurasi pada router MM harus mengakses ke jaringan 102.16.1.0 pada TKJ dan 102.16.3.0 pada RPL. Sekarang seharusnya kemungkinan rute paket ke dua jaringan tersebut dari MM. Bagaimanapun, TKJ dan RPL tidak tahu bagaimana mengembalikan paket ke jaringan yang lain yang terhubung langsung. Routing statis dapat dikonfigurasi pada TKJ dan RPL untuk mencapai jaringan tujuan."),
          CustomRichText(text: "TKJ terhubung ke semua jaringan yang tidak terhubung langsung melalui interface serial 0. RPL hanya satu koneksi ke semua jaringan yang tidak terhubung langsung melalui interface serial 1. Routing default pada TKJ dan RPL akan digunakan untuk rute ke semua paket yang ditujukan untuk jaringan yang tidak terhubung langsung."),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: YoutubePlayer( 
              controller: _videoController2,
              aspectRatio: 16 / 9,
            ),
          ),
        ],
      ),
    );
  }
}