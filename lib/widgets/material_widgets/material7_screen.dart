import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';

class Material7Screen extends StatelessWidget {
  const Material7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomRichText(
            text: "Router adalah perangkat yang berfungsi untuk mentransmisikan paket data dari jaringan internet ke perangkat lain melalui proses routing. Proses routing sendiri merupakan proses meneruskan paket jaringan satu dengan yang lainnya."
          ),
          CustomRichText(
            text: "Router berfungsi sebagai perangkat yang menghubungkan dua atau lebih jaringan atau sub-jaringan serta juga berfungsi untuk membagi koneksi internet ke beberapa perangkat. Selain itu, router juga memiliki beberapa fungsi lainnya, diantaranya:"
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
                      child: CustomText(text: "Menghubungkan jaringan ke DSL")
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
                      child: CustomText(text: "Salah satu fungsi router adalah menghubungkan jaringan lokal ke koneksi DSL (digital subscriber line). Biasanya, DSL router juga berguna sebagai firewall atau melindungi data untuk meningkatkan cyber security agar jaringan internet lebih aman. Dengan begitu, router bisa berfungsi memblokir lalu lintas data yang mencurigakan dan mencegah adanya broadcast storm yang membuat kinerja jaringan lambat.")
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
                      child: CustomText(text: "Mentransmisikan informasi")
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
                      child: CustomText(text: "Router juga memiliki fungsi mentransmisikan informasi dari ke jaringan lain. Router menjembatani akses internet dengan sistem kerja networking bridge agar data dari suatu jaringan bisa dipakai oleh jaringan lain. Hal ini memungkinkan komputer bisa saling berkomunikasi, sehingga dapat terjadi pertukaran data antar node dalam sebuah jaringan.")
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
                      child: CustomText(text: "Membaca alamat IP")
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
                      child: CustomText(text: "Router dapat membaca sumber dan tujuan alamat IP. Pembacaan alamat ini yang nantinya dapat menentukan routing dari satu node ke node lainnya dalam sebuah jaringan.")
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
                      child: CustomText(text: "Menyaring paket data")
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
                      child: CustomText(text: "Selain mentransmisikan informasi, router juga dapat berfungsi untuk memfilterisasi paket data yang beroperasi pada suatu jaringan. Proses filtrasi akan mendukung kinerja jaringan internet dan mencegah perlambatan koneksi internet akibat trafik yang besar. Penyaringan paket data dilakukan berdasarkan aturan melalui alamat IP, port TCP dan UDP.")
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
                      child: CustomText(text: "Menghubungkan jaringan")
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
                      child: CustomText(text: "Dalam menjalankan fungsi utamanya, router menghubungkan jaringan ke beberapa perangkat agar tersedia pembagian paket data antar jaringan. Proses ini berlangsung dengan adanya distribusi alamat IP ke setiap perangkat dalam jaringan tertentu. Dalam arti lain, router mengelola lalu lintas antar jaringan dengan meneruskan paket data ke alamat IP yang dituju sehingga router memungkinkan beberapa perangkat untuk menggunakan koneksi internet yang sama.")
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Perbedaan Router dan Modem",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          CustomRichText(
            text: "Mungkin masih banyak orang yang mengira bahwa router dan modem adalah perangkat yang sama. Sejatinya, kedua perangkat ini memiliki peran berbeda dalam penghubungan jaringan internet. Berikut adalah perbedaan keduanya:"
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/7/image_1.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Cara Kerja Router",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          CustomRichText(
            text: "Router bekerja dengan mengarahkan jaringan data menggunakan routing table untuk menentukan jalur mana saja yang akan dilalui sebuah paket data dalam mencapai tujuannya."
          ),
          CustomRichText(
            text: "Paket data tersebut berisi beberapa bagian, salah satunya membawa informasi seperti pengirim, tipe data, dan alamat IP tujuan. Router akan membaca tiap bagian ini kemudian menentukan rute terbaik yang akan digunakan untuk setiap proses transmisi data."
          ),
          CustomRichText(
            text: "Ketika router mendapat paket, perangkat ini akan langsung mengecek tujuan akhirnya. Kemudian, router akan menentukan jalur terbaik menuju tujuan tersebut untuk menghasilkan koneksi yang cepat."
          ),
          SizedBox(height: 10),
          Text(
            "Jenis-Jenis Router",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "1. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Wireless Router", weight: 'bold')
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 20,
                      child: Image.asset(
                        "assets/images/material/7/image_2.png",
                      ),
                    ),
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
                      child: CustomText(text: "Wireless router adalah jenis router yang menawarkan konektivitas Wi-Fi atau nirkabel ke perangkat pengguna. Jenis ini menggunakan kabel ethernet agar terhubung ke modem, lalu mendistribusikan sinyal dengan mengubah paket data dari kode biner menjadi sinyal radio.")
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
                      child: CustomText(text: "Sinyal tersebut lalu dibagikan menggunakan antena yang ada pada perangkat router. Jadi, router jenis ini tidak memerlukan kabel untuk terhubung ke perangkat pengguna.")
                    )
                  ],
                ),
                // Wired Router
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "2. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Wired Router", weight: 'bold')
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 20,
                      child: Image.asset(
                        "assets/images/material/7/image_3.png",
                        width: 100,
                      ),
                    ),
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
                      child: CustomText(text: "Router kabel menggunakan kabel ethernet untuk terhubung ke modem. Namun router jenis ini memerlukan kabel terpisah untuk menghubungkan beberapa perangkat ke jaringan yang terhubung dengan modem.")
                    )
                  ],
                ),
                // Virtual Router
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "3. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Wired Router", weight: 'bold')
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
                      child: CustomText(text: "Virtual router atau vRouter memungkinkan komputer atau server menyalurkan paket data melalui aplikasi perangkat lunak. Jenis ini berbentuk perangkat lunak, namun tugas dan fungsinya sama seperti router perangkat keras.")
                    )
                  ],
                ),
                // Core Router
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "4. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Core Router", weight: 'bold')
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 20,
                      child: Image.asset(
                        "assets/images/material/7/image_4.png",
                        width: 100,
                      ),
                    ),
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
                      child: CustomText(text: "Jenis ini biasanya digunakan oleh perusahaan dengan volume pengiriman paket data yang tinggi. Core router beroperasi pada inti jaringan dan tidak berkomunikasi dengan jaringan eksternal.")
                    )
                  ],
                ),
                // Edge Router
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "5. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Edge Router", weight: 'bold')
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 20,
                      child: Image.asset(
                        "assets/images/material/7/image_5.png",
                        width: 100,
                      ),
                    ),
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
                      child: CustomText(text: "Jenis router ini bertugas untuk berkomunikasi dengan router inti dan jaringan eksternal. Sesuai namanya, edge (ujung) router berada di tepi jaringan dan menggunakan BGP (Border Gateway Protocol) untuk mengirim dan menerima data dari LAN dan WAN yang berada di luar jaringan.")
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}