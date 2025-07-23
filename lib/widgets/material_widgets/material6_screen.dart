import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';

class Material6Screen extends StatelessWidget {
  const Material6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomRichText(
            text: "Untuk memilih rute paket digunakan algoritma routing. Algoritma routing merupakan suatu protokol/ aturan yang bertanggung jawab untuk menentukan jalur optimal di mana paket dapat ditransmisikan. Protokol routing menggunakan metrik untuk menentukan jalur terbaik untuk pengiriman paket. Metrik adalah standar pengukuran yang digunakan oleh algoritma routing untuk menentukan jalur optimal ke node tujuan."
          ),
          CustomRichText(
            text: "Dan berikut ini adalah metrik yang digunakan oleh protokol untuk menentukan jalur terpendek di antaranya:"
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
                      child: CustomText(text: "1. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Jumlah hop (Hop Count)", weight: 'bold',)
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
                      child: CustomText(text: "Jumlah hop didefinisikan sebagai metrik yang menentukan jumlah lintasan (hop) yang melewati perangkat internetworking seperti router. Jika protokol routing menganggap hop sebagai nilai metrik utama, maka jalur dengan jumlah hop paling sedikit akan dianggap sebagai jalur terbaik untuk berpindah dari node sumber ke tujuan. Sebagi contoh misalnya, dari router A terdapat 1 router hop (A-B) untuk mencapai network 102.168.5.0 jika paket dikirimkan melalui interface s0/1 (102.168.3.1) dan terdapat 2 router hop (A-C-B) jika paket dikirimkan melalui interface s0/0 (102.168.1.1). Jika metric yang digunakan hanyalah hop count maka route terbaik adalah route dengan hop paling sedikit, dalam hal ini adalah jalur A-B.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "2. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Delay", weight: 'bold',)
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
                      child: CustomText(text: "Delay adalah waktu yang dibutuhkan oleh router untuk memproses, mengantri, dan mengirimkan datagram ke antarmuka perangkat. Protokol menggunakan metrik ini guna menentukan nilai delay untuk semua link di sepanjang jalur dari ujung ke ujung. Jalur yang memiliki nilai delay terendah akan dianggap sebagai jalur terbaik.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "3. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Bandwidth", weight: 'bold',)
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
                      child: CustomText(text: "Kapasitas link dikenal sebagai bandwidth link. Bandwidth diukur dalam bit per detik. Link yang memiliki kecepatan transfer lebih tinggi seperti gigabit lebih disukai daripada link yang memiliki kapasitas lebih rendah seperti 56 kb. Protokol akan menentukan kapasitas bandwidth untuk semua link di sepanjang jalur, dan bandwidth yang lebih tinggi secara keseluruhan akan dianggap sebagai rute terbaik.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "4. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Load", weight: 'bold',)
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
                      child: CustomText(text: "Metric ini mencerminkan jumlah traffik yang menggunakan link sepanjang jalur. Jalur terbaik adalah jalur dengan traffik yang paling sepi. Tidak seperti hop count dan bandwidth, load pada route (jalur) berubah-ubah, dan karena itu nilai metricnya juga berubah. Karena itu perlu perhatian yang lebih disini. Jika perubahan nilai metric terjadi terlalu sering, maka frekuensi perubahan route terbaik pada router juga semakin tinggi, hal ini akan mempengaruhi penggunaan CPU pada router, bandwidth data link, dan stabilitas network.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "5. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Beban (Cost)", weight: 'bold',)
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
                      child: CustomText(text: "Beban mengacu pada sejauh mana sumber daya jaringan seperti router atau tautan jaringan bekerja. Beban dapat dihitung dengan berbagai cara seperti penggunaan CPU, paket yang diproses per detik, dan lain sebagainya. Jika trafik meningkat, maka nilai beban juga akan meningkat. Nilai beban berubah sehubungan dengan perubahan lalu lintas jaringan.")
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "6. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Keandalan (Realibility)", weight: 'bold',)
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
                      child: CustomText(text: "Keandalan adalah metrik yang mengukur seberapa sering jaringan mengalami kegagalan dan seberapa mudah jaringan diperbaiki. Protokol dapat menggunakan nilai keandalan sebagai metrik untuk memilih rute terbaik.")
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}