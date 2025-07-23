import 'package:flutter/material.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_rich_text.dart';
import 'package:topology_app/widgets/reusable_widgets/custom_text.dart';

class Material5Screen extends StatelessWidget {
  const Material5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomRichText(
            text: "Algoritma routing adalah dasar dari routing dinamis. Kapanpun topologi jaringan berubah karena perkembangan jaringan, konfigurasi ulang atau terdapat masalah di jaringan, maka router akan mengetahui perubahan tersebut. Dasar pengetahuan ini dibutuhkan secara akurat untuk melihat topologi yang baru."
          ),
          CustomRichText(
            text: "Pada saat semua router dalam jaringan pengetahuannya sudah sama semua berarti dapat dikatakan internetwork dalam keadaan konvergen. Keadaan konvergen yang cepat sangat diharapkan karena dapat menekan waktu pada saat router meneruskan untuk mengambil keputusan routing yang tidak benar."
          ),
          CustomRichText(
            text: "Algotima routing adalah prosedur yang menetapkan rute atau jalur untuk mentransfer paket data dari sumber ke tujuan. Algoritma routing membantu mengarahkan lalu lintas Internet secara efisien. Setelah paket data meninggalkan sumbernya, paket data dapat memilih di antara banyak jalur yang berbeda untuk mencapai tujuannya."
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
                      child: CustomText(text: "a. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Algoritma Adaptif", weight: 'bold')
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
                      child: CustomText(text: "Algoritma routing adaptif, juga dikenal sebagai algoritma routing dinamis, membuat keputusan routing secara dinamis tergantung pada kondisi jaringan. Algoritma ini membuat tabel perutean tergantung pada lalu lintas jaringan dan topologi. Mereka mencoba menghitung rute yang dioptimalkan tergantung pada jumlah hop, waktu transit dan jarak.")
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
                      child: CustomText(text: "Berikut ini tiga jenis algoritma routing adaptif yang sering digunakan:")
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
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
                                  child: CustomText(text: "Algoritma Terpusat", weight: 'bold')
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
                                  child: CustomText(text: "Algoritma ini menemukan jalur dengan biaya paling rendah antara node sumber dan tujuan dengan menggunakan pengetahuan global tentang jaringan. Jadi, ini juga dikenal sebagai algoritma perutean global.")
                                ),
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
                                  child: CustomText(text: "Algoritma Terisolasi", weight: 'bold')
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
                                  child: CustomText(text: "Algoritma ini mendapatkan informasi perutean dengan menggunakan informasi lokal alih-alih mengumpulkan informasi dari node lain.")
                                ),
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
                                  child: CustomText(text: "Algoritma Terdistribusi", weight: 'bold')
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
                                  child: CustomText(text: "Ini adalah algoritma terdesentralisasi yang menghitung jalur dengan biaya paling rendah antara sumber dan tujuan secara berulang-ulang dengan cara terdistribusi.")
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "b. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Algoritma Non-Adaptif", weight: 'bold')
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
                      child: CustomText(text: "Algoritma Routing Non-Adaptif, juga dikenal sebagai algoritma routing statis, membuat tabel routing statis untuk menentukan jalur yang akan dilalui paket yang akan dikirim. Tabel routing statis dibuat berdasarkan informasi routing yang disimpan di router ketika jaringan di-boot.")
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
                      child: CustomText(text: "Dan berikut ini adalah dua jenis algoritma perutean non – adaptif:")
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
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
                                  child: CustomText(text: "Flooding", weight: 'bold')
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
                                  child: CustomText(text: "Dalam flooding, ketika sebuah paket data tiba di router, paket tersebut dikirim ke semua sambungan keluar kecuali yang telah dituju. Flooding dapat berupa flooding yang tidak terkendali, terkendali, atau selektif.")
                                ),
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
                                  child: CustomText(text: "Random Walk", weight: 'bold')
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
                                  child: CustomText(text: "Ini adalah algoritma probabilistik di mana paket data dikirim oleh router ke salah satu tetangganya secara acak.")
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomText(text: "c. ", weight: 'bold')
                    ),
                    Expanded(
                      flex: 10,
                      child: CustomText(text: "Algoritma Hybrid", weight: 'bold')
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
                      child: CustomText(text: "Seperti namanya, algoritme ini merupakan kombinasi dari algoritme adaptif dan non-adaptif. Dalam pendekatan ini, jaringan dibagi menjadi beberapa wilayah, dan setiap wilayah menggunakan algoritma yang berbeda.")
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
                      child: CustomText(text: "Algoritma routing Hybrid diklasifikasikan sebagai berikut:")
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
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
                                  child: CustomText(text: "Link-state", weight: 'bold')
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
                                  child: CustomText(text: "Dalam metode ini, setiap router membuat peta jaringan yang terperinci dan lengkap yang kemudian dibagikan ke semua router lainnya. Hal ini memungkinkan pengambilan keputusan perutean yang lebih akurat dan efisien.")
                                ),
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
                                  child: CustomText(text: "Distance Vector", weight: 'bold')
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
                                  child: CustomText(text: "Dalam metode ini, setiap router menyimpan tabel yang berisi informasi tentang jarak dan arah ke setiap node lain dalam jaringan. Tabel ini kemudian dibagikan dengan router lain dalam jaringan. Kerugian dari metode ini adalah dapat menyebabkan perutean yang berulang-ulang.")
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
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