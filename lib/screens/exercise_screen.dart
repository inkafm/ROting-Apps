import 'package:flutter/material.dart';
import 'package:topology_app/core/global.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    var color = Global.primaryColor;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analogi",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'Ubuntu'
          ),
        ),
        backgroundColor: Color(color),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 40
                )
                ,
                child: Image.asset(
                  "assets/images/simulation/simulation_2.png",
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              // Papan Selamat Datang
              Positioned(
                right: 110,
                top: 120,
                child: InkWell(
                  onTap: () => Dialogs.showMyDialog(context, 0),
                  child: Image.asset(
                    "assets/icons/information.png",
                    width: 18,
                  ),
                ),
              ),
              // Pintu Gerbang Desa
              Positioned(
                left: 135,
                top: 120,
                child: InkWell(
                  onTap: () => Dialogs.showMyDialog(context, 1),
                  child: Image.asset(
                    "assets/icons/information.png",
                    width: 18,
                  ),
                ),
              ),
              // Kantor Kecamatan
              Positioned(
                right: 90,
                top: 110,
                child: InkWell(
                  onTap: () => Dialogs.showMyDialog(context, 2),
                  child: Image.asset(
                    "assets/icons/information.png",
                    width: 18,
                  ),
                ),
              ),
              // Desa
              Positioned(
                left: 150,
                top: 100,
                child: InkWell(
                  onTap: () => Dialogs.showMyDialog(context, 3),
                  child: Image.asset(
                    "assets/icons/information.png",
                    width: 18,
                  ),
                ),
              ),
              // Rumah
              Positioned(
                left: 175,
                top: 90,
                child: InkWell(
                  onTap: () => Dialogs.showMyDialog(context, 4),
                  child: Image.asset(
                    "assets/icons/information.png",
                    width: 18,
                  ),
                ),
              ),
              // Alamat
              Positioned(
                right: 105,
                bottom: 85,
                child: InkWell(
                  onTap: () => Dialogs.showMyDialog(context, 5),
                  child: Image.asset(
                    "assets/icons/information.png",
                    width: 18,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.info, color: Colors.white, size: 25),
                      SizedBox(width: 10),
                      Text(
                        "Panduan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Nunito"
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CustomText(text: "1. ")
                            ),
                            Expanded(
                              flex: 10,
                              child: CustomText(text: "Tekan ikon warna kuning untuk menampilkan pop up")
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
                              child: CustomText(text: "Pada pop up akan menampilkan informasi dari analogi tersebut")
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Dialogs {
  static Future<void> showMyDialog(parentContext, key) {
    var informations = [
      "Papan selamat datang menganalogikan sebuah Next Hop pada jaringan komputer. Next Hop merupakan sebuah akses untuk menuju ke jaringan lain. Next Hop adalah alamat IP terdekat yang harus dilalui sebuah paket untuk pergi ke alamat jaringan yang dituju.",
      "Gateway merupakan suatu informasi yang harus dimiliki oleh tiap-tiap perangkat di dalam sebuah jaringan. Gateway merupakan pintu gerbang yang menghubungkan perangkat pada jaringan lokal untuk dapat berkomunikasi atau saling bertukar paket dengan perangkat lain yang berada di jaringan yang berbeda. Maka Gateway dapat dianalogikan sebagai sebuah “Pintu Gerbang Desa” yang mana masing-masing rumah harus melalui pintu ini ketika ingin berkunjung/ mengirim sebuah paket ke desa lain.",
      "Kantor Kecamatan dianalogikan sebagai sebuah router yang mengetahui semua informasi terkait jaringan. Mulai dari alamat desa lain (destination network), pembagian wilayah (subnetmask), akses jalan yang harus dilewati (nexthop), dan informasi lainnya yang diperlukan seseorang ketika ingin saling terhubung/ mengenali desa lainnya.",
      "Disini desa dianalogikan sebagai sebuah jaringan atau sub-jaringan. Jadi ketika mengkonfigurasi router, sub-jaringan inilah yang akan menjadi destination network.",
      "Rumah dianalogikan sebagai Node/ perangkat yang berada di dalam sebuah jaringan.",
      "IP Address merupakan sebuah identitas unik yang dimiliki oleh tiap perangkat di dalam sebuah jaringan. IP address masing-masing perangkat dianalogikan sebagai sebuah alamat lengkap mulai dari nama kecamatan, nama desa, nama jalan, hingga nomor rumah."
    ];
    var images = [
      "assets/icons/papan-selamat-datang.png",
      "assets/icons/gerbang-desa.png",
      "assets/icons/kantor-kecamatan.png",
      "assets/icons/desa.png",
      "assets/icons/rumah.png",
      "assets/icons/alamat.png"
    ];

    return showDialog(
      context: parentContext,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(20)
          ),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Image.asset(
                          "assets/icons/information.png",
                          width: 40,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Informasi",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    images[key],
                    width: 100,
                  ),
                  SizedBox(height: 10),
                  CustomRichText(text: informations[key])
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}