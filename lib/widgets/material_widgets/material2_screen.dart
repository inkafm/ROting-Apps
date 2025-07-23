import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';

class Material2Screen extends StatelessWidget {
  const Material2Screen({super.key});

  static List subContent1 = [
    {
      "title": "Tabel Routing",
      "content": "Dalam proses routing, tabel routing berfungsi sebagai pencatat jalur yang akan dan harus diambil paket untuk mencapai tujuannya."
    },
    {
      "title": "Router",
      "content": "Router berfungsi sebagai perangkat keras yang dibutuhkan dalam proses routing. Dalam proses ini berfungsi untuk perangkat aktif yang akan menerima paket Internet, membaca header paket, memeriksa alamat tujuan dari paket, memilih dan menentukan jalur yang akan dilewati paket untuk ke tujuan, serta menentukan ke mana tujuan routing yang sudah sesuai dengan informasi dalam tabel routing sebelumnya."
    },
    {
      "title": "Protokol Routing",
      "content": "Protokol routing ini memilih rute dalam jaringan untuk menentukan jalur terbaik untuk meneruskan paket. Setiap router akan berkomunikasi dengan satu sama lain untuk saling mengumpulkan informasi mengenai jalur yang kemungkinan berbeda ke jaringan tertentu dan akan disimpan ke tabel routing."
    },
  ];

  static List subContent2 = [
    {
      "title": "Routing Terjadi di Lapisan Jaringan TCP/IP",
      "content": "TCP/IP berfungsi sebagai alamat pengiriman paket data dalam jaringan yang akan membantu paket data menuju ke alamat utama yang dituju (host). Selain itu, TCP/IP ini berfungsi untuk menerima paket data mengirimkan paket data lagi yang ada di dalam sistem. Pada proses awal routing, di jaringan TCP/IP terjadi pembagian alamat pada setiap user komputer. Data-data yang akan dikirim dari perangkat akan dibuat dalam bentuk datagram. Datagram ini adalah paket data yang sering dikenal dengan IP atau Internet Protocol."
    },
    {
      "title": "Pemeriksaan Alamat Paket oleh IP",
      "content": "Datagram yang sudah disiapkan telah memiliki alamat tujuan masing-masing. Setelah itu IP akan memeriksa alamat-alamat pada paket data tersebut untuk disampaikan kepada perangkat tujuan (host). Ada dua kemungkinan yang akan dilakukan:"
    },
  ];

  static List subContent3 = [
    {
      "title": "IP address tujuan",
    },
    {
      "title": "IP address next hop router (gateway)",
    },
    {
      "title": "Flag yang menyatakan jenis routing",
    },
  ];

  static List subContent4 = [
    {
      "title": "Mencari di table routing, entry yang cocok dengan IP address tujuan. Jika ditemukan, paket akan dikirim ke next hop router atau interface yang terhubung langsung dengannya.",
    },
    {
      "title": "Mencari di table routing, entry yang cocok dengan alamat jaringan dari tujuan jaringan. Jika ditemukan, paket dikirm ke next hop router tersebut.",
    },
    {
      "title": "Mencari di table routing, entry data yang bertanda default, jika ditemukan paket dikirim ke router tersebut.",
    },
  ];

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
                    title,
                    // textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 16.0,
                      fontFamily: 'Nunito',
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
              // textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: 'Nunito',
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
        children: [
          CustomRichText(
            text: "Sebelum memahami alur kerja dari routing, perlu untuk memahami beberapa fungsi dari aspek-aspek dalam proses routing dan protokol routing. Beberapa fungsi tertentu setiap aspek pada proses routing adalah sebagai berikut:"
          ),
          SizedBox(height: 10),
          for(int index = 0; index < subContent1.length; index++) renderContent1(
            index,
            subContent1[index]['title'],
            subContent1[index]['content']
          ),
          SizedBox(height: 10),
          Text(
            "Runtutan/ Alur Proses Routing",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
              fontSize: 16
            ),
          ),
          for(int index = 0; index < subContent2.length; index++) renderContent1(
            index,
            subContent2[index]['title'],
            subContent2[index]['content']
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Proses routing yang dilakukan oleh sebuah router menggunakan router table untuk menentukan jalur mana saja yang bisa dilalui sebuah paket data supaya bisa mencapai tujuan akhirnya. Routing table dapat diumpamakan seperti jalur kereta dengan stasiun-stasiun di dalamnya. Sedangkan paket adalah penumpang-penumpang yang haru naik kereta ke stasiun-stasiun tertentu untuk sampai ke tujuan akhir. Oleh karena itu ketika sebuah router mendapatkan paket, perangkat ini langsung mengecek ke mana tujuan akhirnya. Lalu, router mulai menentukan jalan yang harus ditempuh untuk koneksi yang terbaik."
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Proses routing tersebut dapat dilakukan oleh host cukup sederhana. Jika host tujuan terletak di jaringan yang sama atau terhubung langsung. Maka IP datagram dikirim langsung ke tujuan. Apabila routing host menuju jaringan yang berbeda (internet), maka IP datagram dikirim ke default router. Router ini yang akan mengatur pengiriman IP selanjutnya, hingga sampai ke tujuannya. Dalam suatu table routing terdapat:"
          ),
          SizedBox(height: 10),
          for(int index = 0; index < subContent3.length; index++) renderContent1(
            index,
            subContent3[index]['title'],
            ''
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Dalam proses meneruskan paket ke tujuan, IP router akan melakukan hal-hal berikut:"
          ),
          SizedBox(height: 10),
          for(int index = 0; index < subContent4.length; index++) renderContent1(
            index,
            subContent4[index]['title'],
            ''
          ),
        ],
      ),
    );
  }
}