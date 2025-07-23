import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';

class Material4Screen extends StatelessWidget {
  const Material4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText(
            text: "Routing protocol merupakan salah satu komponen terpenting pada network TCP/IP. Routing protocol secara dinamis berkomunikasi untuk menentukan rute terbaik mencapai tujuan. Paket di-forward dari satu router ke router yang lain. Sudah cukup banyak protokol routing yang dikembangkan, seperti RIP. EIGRP, OSPF, dan sebagainya. Ada yang bersifat open (terbuka dan didukung berbagai vendor perangkat) ada juga yang proprietary (hanya untuk perangkat buatan vendor tertentu). Routing protocol bisa dikelompokkan menjadi beberapa jenis. Di masa awal perkembangan internet, hanya ada dua jenis protocol routing, yaitu:"
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
                      child: CustomText(text: "Gateway to Gateway Protocol (GGP), digunakan pada core internetwork.")
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
                      child: CustomText(text: "Exterior Gateway Protocol (EGP), digunakan antara core dan non-corerouter (router standalone yang terhubung dengan network internal).")
                    )
                  ],
                ),
              ],
            ),
          ),
          CustomRichText(
            text: "Namun saat ini routing protocol telah berkembang menjadi lebih kompleks. Jika dilhat dari cakupannya, maka routing protocol bisa dikelompokkan menjadi:"
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
                      child: CustomText(text: "Interior Routing Protocol")
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
                      child: CustomText(text: "Disebut juga Interior Gateway Protocol, protokol yang termasuk dalam kategori ini adalah: RIP, RIPv2, RIPng, IGRP, EIGRP, EIGRP untuk IPv6, OSPF, OSPFv2, OSPFv3, IS-IS, IS-IS untuk IPv6. Kata interior disini dimaksudkan untuk menunjukkan bahwa protokol tersebut hanya bekerja di dalam independent network system atau autonomous system (AS). ")
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
                      child: CustomText(text: "Exterior Routing Protocol")
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
                      child: CustomText(text: "Disebut juga Exterior Gateway Protocol, protokol yang termasuk dalam kategori ini adalah: EGP, BGPv4, BGPv4 untuk IPv6. Kata Exterior di sini dimaksudkan untuk menunjukkan bahwa protokol tersebut dapat bekerja antar beberapa independent network system atau disebut autonomous system (AS).")
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Tujuan Routing Protocol",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          CustomRichText(
            text: "Tujuan utama dari routing protokol adalah untuk membangun dan memperbaiki table routing. Dimana tabel ini berisi jaringan-jaringan dan interface yang berhubungan dengan jaringan tersebut. Router menggunakan protokol routing ini untuk mengatur informasi yang diterima dari router-router lain dan interfacenya masing-masing, sebagaimana yang terjadi di konfigurasi routing secara manual."
          ),
          SizedBox(height: 5),
          CustomRichText(
            text: "Routing protokol mempelajari semua router yang ada, menempatkan rute yang terbaik ke table routing, dan juga menghapus rute ketika rute tersebut sudah tidak valid lagi. Router menggunakan informasi dalam table routing untuk melewatkan paket-paket routed protokol."
          ),
          SizedBox(height: 10),
          Text(
            "Routing Protocol vs Routed Protocol",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          SizedBox(height: 5),
          CustomRichText(
            text: "Routing protocol adalah komunikasi antara router-router. Routing protocol mengijinkan router-router untuk sharing informasi tentang jaringan dan koneksi antar router. Router menggunakan informasi ini untuk membangun dan memperbaiki table routingnya. Seperti pada gambar di bawah ini."
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/4/image_1.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomRichText(
            text: "Routed protocol digunakan untuk trafik user langsung. Routed protocol menyediakan informasi yang cukup dalam layer address jaringannya untuk melewatkan paket yang akan diteruskan dari satu host ke host yang lain berdasarkan alamatnya."
          ),
          CustomRichText(
            text: "Contoh routed protocol:"
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
                      child: CustomText(text: "Internet Protocol (IP)")
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
                      child: CustomText(text: "Internetwork Packet Exchange (IPX)")
                    )
                  ],
                ),
              ],
            ),
          ),
          CustomRichText(
            text: "Protokol routing berada pada layer internet TCP/IP, router dapat menggunakan protokol routing untuk membentuk routing melalui suatu algoritma yang meliputi:"
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
                      child: CustomText(text: "RIP – menggunakan protokol routing interior dengan algoritma distance vector")
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
                      child: CustomText(text: "IGRP – menggunakan protokol routing interior dengan algoritma cisco distance vector")
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
                      child: CustomText(text: "EIGRP – menggunakan protokol routing interior dengan algoritma advanced Cisco distance vector")
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
                      child: CustomText(text: "OSPF – menggunakan protokol routing interior dengan algoritma link-state")
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
                      child: CustomText(text: "BGP – menggunakan protokol routing eksterior dengan algoritma distance vector")
                    )
                  ],
                ),
              ],
            ),
          ),
          CustomRichText(
            text: "Dan berikut ini adalah penjelasan dan karakterstik dari masing-masing routing protokol:"
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
                      child: CustomText(text: "Routing Information Protocol (RIP)")
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
                      child: CustomText(text: "Routing Information Protocol (RIP) adalah sebuah protokol routing dinamis yang digunakan dalam jaringan LAN (Local Area Network) dan WAN (Wide Area Network). Oleh karena itu protokol ini diklasifikasikan sebagai Interior Gateway Protocol (IGP). Protokol ini menggunakan algoritma Distance-Vector Routing. Pertama kali didefinisikan dalam RFC 1058 (1988). Protokol ini telah dikembangkan beberapa kali, sehingga terciptalah RIP Versi 2 (RFC 2453).")
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
                      child: CustomText(text: "Internal Gateway Routing Protocol (IGRP)")
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
                      child: CustomText(text: "Interior Gateway Routing Protocol (IGRP) adalah protokol yang menggunakan algoritma vektor jarak (distance vector) routing yang interior protocol (IGP) nya dikembangkan oleh Cisco. Hal ini digunakan oleh router untuk bertukar routing yang data dalam suatu sistem otonom. IGRP adalah protokol proprietary. IGRP diciptakan pada bagian untuk mengatasi keterbatasan RIP (count hop maksimum hanya 15, dan routing tunggal metrik) bila digunakan dalam jaringan yang besar.")
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
                      child: CustomText(text: "Enhanced Internal Gateway Routing Protocol (EIGRP)")
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
                      child: CustomText(text: "Enhanced Interior Gateway Routing Protocol (EIGRP) adalah lanjutan distance vector routing protokol yang digunakan pada jaringan komputer untuk mengotomatisasi routing yang keputusan dan konfigurasi. Protokol ini dirancang oleh Cisco Systems sebagai protokol proprietary, hanya tersedia pada router Cisco. Fungsi parsial dari EIGRP dikonversi menjadi sebuah standar terbuka pada tahun 2013 dan diterbitkan dengan statusnya informasi sebagai RFC 7868 pada tahun 2016.")
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
                      child: CustomText(text: "Open Shortest Path First (OSPF)")
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
                      child: CustomText(text: "Open Shortest Path First (OSPF) adalah routing protocol untuk Internet Protocol (IP) jaringan. OSPF menggunakan protokol routing link-state routing yang algoritma (LSR) dan jatuh ke dalam kelompok protokol routing interior, yang beroperasi dalam satu sistem otonom (AS). Hal ini didefinisikan sebagai OSPF Versi 2 di RFC 2328 (1998) untuk IPv4. Update untuk IPv6 ditetapkan sebagai OSPF Versi 3 di RFC 5340 (2008). OSPF adalah protokol routing dinamis yang mendukung metode subnetting network VLSM (Variable Length Subnet Mask).")
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
                      child: CustomText(text: "Border Gateway Protocol (BGP)")
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
                      child: CustomText(text: "Border Gateway Protocol adalah sebuah inti dari protokol routing Internet. Protocol ini yang menjadi backbone dari jaringan Internet dunia. BGP adalah protokol routing inti dari internet yang digunakan untuk melakukan pertukaran informasi routing antar jaringan. BGP dijelaskan dalam RFC 4271. RFC 4276 menjelaskan implementasi report pada BGP-4, RFC 4277 menjelaskan hasil ujicoba penggunaan BGP-4. Ia bekerja dengan cara memetakan sebuah tabel IP network yang menunjuk ke jaringan yg dapat dicapai antar Autonomous System (AS).")
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Image.asset(
                  "assets/images/material/4/image_2.png",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}