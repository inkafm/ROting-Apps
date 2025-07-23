class QuestionData {
  static List questions = [
    {
      'title': '',
      "image": "",
      'answers': [],
      "answer_key": ''
    },
    {
      'title': 'Jenis routing yang bisa berubah sesuai dengan kondisi yang diinginkan dengan parameter tertentu sesuai dengan protokolnya, disebut …',
      "image": "",
      'answers': [
        "Routing Protokol",
        "Routing Dinamis",
        "Routing Statis",
        "Routing Tabel",
        "Routing Information Protocol"
      ],
      "answer_key": 'Routing Dinamis'
    },
    {
      'title': 'Routing tabel dibuat secara otomatis. Ini merupakan salah satu ciri yang dimiliki oleh…',
      "image": "",
      'answers': [
        "Routing Dinamis",
        "Routing Statis",
        "RIP",
        "BGP",
        "OSPF"
      ],
      "answer_key": 'Routing Dinamis'
    },
    {
      'title': 'Dari pernyataan diatas yang merupakan ciri yang dimiliki oleh routing dinamis terdapat pada no …',
      "image": "assets/images/evaluation/question_3.png",
      'answers': [
        "1, 3 dan 4",
        "2, 3 dan 5",
        "1, 3 dan 5",
        "1, 2 dan 5",
        "1, 2 dan 4"
      ],
      "answer_key": '2, 3 dan 5'
    },
    {
      'title': 'Sebuah mekanisme dasar dari routing dinamis yang menentukan bagaimana sebuah protokol routing mencari jalur terbaik untuk transmisi paket adalah…',
      "image": "",
      'answers': [
        "Rute transmisi paket",
        "Algoritma routing",
        "Tabel routing",
        "Protokol routing",
        "Database routing"
      ],
      "answer_key": 'Algoritma routing'
    },
    {
      'title': 'Bila terjadi penambahan suatu network baru tidak semua router perlu mengkonfigurasi. Ini merupakan salah satu kelebihan yang dimiliki oleh …',
      "image": "",
      'answers': [
        "Routing Dinamis",
        "Routing Statis",
        "RIP",
        "BGP",
        "OSPF"
      ],
      "answer_key": 'Routing Statis'
    },
    {
      'title': 'Routing dinamis memiliki beberapa protokol. Protokol routing dinamis yang menggunakan algoritma interior distance vector termasuk …',
      "image": "",
      'answers': [
        "BGP",
        "OSPF",
        "RIF",
        "RIP",
        "EIGRP"
      ],
      "answer_key": 'RIP'
    },
    {
      'title': 'Suatu mekanisme routing yang dilakukan dengan konfigurasi secara manual dan tergantung pada routing table (table routing), disebut dengan …',
      "image": "",
      'answers': [
        "Routing Protokol",
        "Routing Dinamis",
        "Routing Statis",
        "Routing Tabel",
        "Routing Information Protocol"
      ],
      "answer_key": 'Routing Statis'
    },
    {
      'title': 'Protokol routing yang menggunakan campuran antara algoritma link state dan distance vector yaitu…',
      "image": "",
      'answers': [
        "RIP",
        "OSPF",
        "BGP",
        "EIGRP",
        "RIF"
      ],
      "answer_key": 'EIGRP'
    },
    {
      'title': 'Secara umum yang merupakan urutan tahapan proses konfigurasi pada routing dinamis terdapat pada…',
      "image": "assets/images/evaluation/question_9.png",
      'answers': [
        "(1), (2), (4) dan (3)",
        "(2), (1), (4) dan (3)",
        "(2), (4), (3) dan (1)",
        "(2), (4), (1) dan (3)",
        "(4), (2), (1) dan (3)"
      ],
      "answer_key": '(2), (4), (1) dan (3)'
    },
    {
      'title': 'Jika proses konfgurasi IP Address telah selesai dilakukan, maka untuk dapat mengaktifkan port pada IP Address tersebut, dapat dilakukan dengan menginputkan perintah…',
      "image": "",
      'answers': [
        "enable",
        "conf terminal",
        "no shutdown",
        "ip address",
        "ex"
      ],
      "answer_key": 'no shutdown'
    },
    {
      'title': 'Berikut ini perintah untuk melakukan routing adalah…',
      "image": "",
      'answers': ["ip route add dst-address gateway", "ip route add dst-gateway address", "ip route dst add-address config", "ip route dst add-gateway gateway", "ip route add dst-address config"],
      "answer_key": 'ip route add dst-address gateway'
    },
    {
      'title': 'Perintah Untuk memeriksa hasil dari konfigurasi routing telah tersetting dengan benar adalah…',
      "image": "",
      'answers': [
        "Router#configure terminal",
        "Router#show ip interface brief",
        "Router#show ip brief",
        "Router#show ip route",
        "Router(config)#interface fa0/1"
      ],
      "answer_key": 'Router#show ip route'
    },
    {
      'title': 'Salah satu faktor saat konfigurasi routing dinamis namun saat dilakukan pengetesan jaringan tidak berfungsi sesuai tabel routing yang digunakan yaitu…',
      "image": "",
      'answers': [
        "Router berbeda tipe",
        "salah entry ip address",
        "salah memilih switch",
        "salah terminal",
        "salah menggunakan kabel penghubung"
      ],
      "answer_key": 'salah memilih switch'
    },
    {
      'title': 'Salah satu faktor saat konfigurasi routing dinamis namun saat dilakukan pengetesan jaringan tidak berfungsi sesuai tabel routing yang digunakan yaitu…',
      "image": "",
      'answers': [
        "Router berbeda tipe",
        "salah entry ip address",
        "salah memilih switch",
        "salah terminal",
        "salah menggunakan kabel penghubung"
      ],
      "answer_key": 'salah memilih switch'
    },
    {
      'title': 'Dari hasil perintah ping dari suatu komputer berikut ini, mana yang menunjukkan bahwa jaringan komputer telah tersambung dengan baik…',
      "image": "",
      'answers': [
        "Reply from 192.168.1.2: bytes=32 time = 5ms TTL=32",
        "Reply from 192.168.2.3: bytes=32 time = 15ms TTL=32",
        "Reply from 192.168.3.4: bytes=32 time = 25ms TTL=32",
        "Reply from 192.168.4.5: bytes=32 time = 10ms TTL=32",
        "Reply from 192.168.5.6: bytes=32 time = 1ms TTL=32"
      ],
      "answer_key": 'Reply from 192.168.5.6: bytes=32 time = 1ms TTL=32'
    },
    {
      'title': 'Router(config)# router rip. Perintah diatas merupakan perintah pada router yang digunakan untuk…',
      "image": "",
      'answers': [
        "Membuat konfigurasi routing dinamis",
        "Membuat password terlnet",
        "Mengganti nama hostname",
        "Mengaktifkan protokol rip routing",
        "Mengganti nama vlan"
      ],
      "answer_key": 'Mengaktifkan protokol rip routing'
    },
    {
      'title': '#ip route 192.168.1.0 255.255.255.0 192.168.1.193 dalam konfigurasi routing statis tersebut yang di sebut destination adalah…',
      "image": "",
      'answers': [
        "192.168.1.0",
        "192.168.1.193",
        "255.255.255.0",
        "255.255.255.193",
        "192.168.1.0/24"
      ],
      "answer_key": '192.168.1.0'
    },
    {
      'title': 'Salah satu siswa kelas XI SMK Candra Naya mendapatkan tugas untuk membangun sebuah infrastruktur routing OSPF yang terdiri dari 4 perangkat router dengan menggunakan aplikasi Packet Tracer. Saat menghubungkan antar router tersebut dan setelah memberikan IP address, lampu indikator yang seharusnya berwarna hijau, pada siswa tersebut tetap berwarna merah. Permasalahan yang terjadi adalah…',
      "image": "",
      'answers': [
        "Terbaliknya IP address antara interface satu dengan yang lain",
        "Kesalahan dalam penggunaan kabel",
        "Kesalahan pada konfigurasi clock rate",
        "Menggunakan aplikasi packet tracer dengan versi yang tidak mendukung routing OSPF",
        "Menggunakan router yang tidak mendukung routing OSPF"
      ],
      "answer_key": 'Terbaliknya IP address antara interface satu dengan yang lain'
    },
    {
      'title': "Perintah untuk melihat rute dari hop (interface router) yang dilalui adalah…",
      "image": "",
      'answers': [
        "ping <ip address>",
        "send <ip address>",
        "mail <ip address>",
        "tracert <ip address>",
        "route <ip address>"
      ],
      "answer_key": 'tracert <ip address>'
    },
    {
      'title': "Dalam routing statis, jika terjadi kegagalan pada jalur yang ditentukan, maka:",
      "image": "",
      'answers': [
        "Jalur akan secara otomatis diperbaiki",
        "Jalur alternatif akan segera digunakan",
        "Tidak ada jalur alternatif yang tersedia",
        "Router akan mencari jalur baru secara dinamis",
        "Paket akan diarahkan ke jalur default"
      ],
      "answer_key": 'Paket akan diarahkan ke jalur default'
    },
    {
      'title': "Routing dinamis menggunakan metrik untuk menentukan jalur terbaik. Metrik tersebut bisa berupa:",
      "image": "",
      'answers': [
        "Waktu",
        "Kecepatan",
        "Jumlah hop",
        "Ukuran paket",
        "Protokol yang digunakan"
      ],
      "answer_key": 'Jumlah hop'
    },
    {
      'title': "Dalam konfigurasi routing statis, apa yang harus dilakukan jika terjadi perubahan topologi jaringan?",
      "image": "",
      'answers': [
        "Mengkonfigurasi ulang secara dinamis",
        "Router akan secara otomatis menyesuaikan tabel routing",
        "Tabel routing harus diperbarui secara manual",
        "Menggunakan protokol routing dinamis untuk pembaruan otomatis",
        "Menonaktifkan semua jalur yang ada"
      ],
      "answer_key": 'Tabel routing harus diperbarui secara manual'
    },
    {
      'title': "Protokol routing dinamis mana yang menggunakan algoritma state link?",
      "image": "",
      'answers': [
        "BGP",
        "RIP",
        "OSPF",
        "EIGRP",
        "IGRP"
      ],
      "answer_key": 'OSPF'
    },
    {
      'title': "Dalam routing dinamis, apa yang dimaksud dengan 'convergence'?",
      "image": "",
      'answers': [
        "Proses menggabungkan beberapa tabel routing menjadi satu",
        "Proses dimana semua router memiliki informasi yang sama tentang jaringan",
        "Penggabungan beberapa protokol routing menjadi satu",
        "Konversi dari routing statis ke dinamis",
        "Pengurangan jumlah router dalam jaringan"
      ],
      "answer_key": 'Proses dimana semua router memiliki informasi yang sama tentang jaringan'
    },
    {
      'title': "Protokol routing dinamis yang menggunakan hop count sebagai metrik utamanya adalah:",
      "image": "",
      'answers': [
        "BGP",
        "RIP",
        "OSPF",
        "EIGRP",
        "IGRP"
      ],
      "answer_key": 'OSPF'
    },
    {
      'title': "Dalam routing dinamis, 'administrative distance' digunakan untuk:",
      "image": "",
      'answers': [
        "Menentukan jumlah router dalam jaringan",
        "Menentukan keandalan sumber informasi routing",
        "Menentukan jumlah hop maksimum yang diizinkan",
        "Menentukan kecepatan transmisi data",
        "Menentukan ukuran paket data"
      ],
      "answer_key": 'Menentukan keandalan sumber informasi routing'
    },
    {
      'title': "Protokol routing dinamis yang mendukung VLSM (Variable Length Subnet Mask) adalah:",
      "image": "",
      'answers': [
        "BGP",
        "OSPF",
        "RIP versi 1",
        "EIGRP",
        "IGRP"
      ],
      "answer_key": 'OSPF'
    },
    {
      'title': "Routing dinamis menggunakan protokol untuk:",
      "image": "",
      'answers': [
        "Menetapkan alamat IP statis",
        "Mengirimkan informasi routing antar router",
        "Mengkonfigurasi firewall",
        "Mengatur bandwidth",
        "Menetapkan alamat MAC"
      ],
      "answer_key": 'Mengirimkan informasi routing antar router'
    },
    {
      'title': "Protokol routing dinamis yang dirancang untuk jaringan besar dan kompleks adalah:",
      "image": "",
      'answers': [
        "BGP",
        "OSPF",
        "RIP",
        "EIGRP",
        "IGRP"
      ],
      "answer_key": 'BGP'
    },
    {
      'title': "Salah satu kelemahan dari routing dinamis adalah:",
      "image": "",
      'answers': [
        "Memerlukan konfigurasi manual yang rumit",
        "Tidak dapat beradaptasi dengan perubahan jaringan",
        "Memerlukan lebih banyak sumber daya sistem",
        "Tidak mendukung subnetting",
        "Tidak kompatibel dengan perangkat keras tertentu"
      ],
      "answer_key": 'Memerlukan lebih banyak sumber daya sistem'
    },
    {
      'title': "Protokol routing dinamis yang menggunakan algoritma distance vector adalah:",
      "image": "",
      'answers': [
        "BGP",
        "OSPF",
        "RIP",
        "EIGRP",
        "IGRP"
      ],
      "answer_key": 'RIP'
    },
    {
      'title': "Suatu alamat dengan protokol TCP/IP yang diberikan pada jaringan komputer dan perangkat yang ada di dalamnya disebut….",
      "image": "",
      'answers': [
        "Host",
        "Server",
        "DNS",
        "IP Address",
        "Domain"
      ],
      "answer_key": 'IP Address'
    },
    {
      'title': "Pada topologi di atas, PC1 masih tidak dapat berkomunikasi dengan PC3 yang berada di jaringan yang berbeda, hal ini dikarenakan terdapat suatu kesalahan dalam konfigurasinya yaitu….",
      "image": "assets/images/evaluation/question_32.png",
      'answers': [
        "Gateway pada PC3 seharusnya menggunakan alamat 172.16.2.1",
        "Gateway pada PC1 seharusnya menggunakan alamat 172.16.2.2",
        "Masing-masing interface pada Router0 harus menggunakan alamat IP yang sama",
        "PC3 harus berada dalam 1 jaringan yang sama dengan PC1 dan PC2",
        "PC3 harus menggunakan alamat IP yang sama dengan PC1 yaitu 172.16.1.2"
      ],
      "answer_key": 'Gateway pada PC3 seharusnya menggunakan alamat 172.16.2.1'
    },
    {
      'title': "Ukuran yang digunakan sebagai indikasi penggunaan rute sehingga menjadi rute yang terbaik di antara banyak rute tujuan adalah ...",
      "image": "",
      'answers': [
        "Interface",
        "Router",
        "Metrik",
        "Next Hop",
        "Algoritma"
      ],
      "answer_key": 'Metrik'
    },
    {
      'title': "Algoritma yang memperbaiki pengetahuan dari jarak router dan bagaimana mereka interkoneksi adalah ...",
      "image": "",
      'answers': [
        "Distance Vector",
        "Link State",
        "RIP",
        "IGRP",
        "OSPF"
      ],
      "answer_key": 'Link State'
    },
    {
      'title': "Perangkat keras yang mengarahkan paket data diantara jaringan komputer yang berbeda adalah ...",
      "image": "",
      'answers': [
        "Gateway",
        "Server",
        "Repeater",
        "Router",
        "Switch"
      ],
      "answer_key": 'Router'
    },
    {
      'title': "Suatu ukuran dari banyaknya informasi yang dapat dialirkan dari source ke destination dalam suatu waktu tertentu adalah….",
      "image": "",
      'answers': [
        "Metrik",
        "Domain",
        "Hop count",
        "Load",
        "Bandwidth"
      ],
      "answer_key": 'Bandwidth'
    },
    {
      'title': "Untuk menampilkan informasi dari konfigurasi IP yang digunakan pada komputer dengan sistem operasi windows digunakan perintah….",
      "image": "",
      'answers': [
        "ifconfig",
        "ipconfig",
        "show ip route",
        "ip route",
        "show ipconfig"
      ],
      "answer_key": 'ipconfig'
    },
    {
      'title': "Apabila alamat IP pada interface fa0/0 di router TKJ adalah 192.168.1.1 maka seharusnya gateway yang digunakan pada tiap-tiap perangkat yang berada di jaringan 192.16.1.0 adalah…",
      "image": "assets/images/evaluation/question_38.png",
      'answers': [
        "192.16.1.1",
        "192.168.1.1",
        "192.16.10.1",
        "192.16.10.0",
        "192.168.1.0"
      ],
      "answer_key": '192.168.1.1'
    },
    {
      'title': "Perintah untuk masuk ke menu global configuration pada Cisco Packet Tracer adalah….",
      "image": "assets/images/evaluation/question_39.png",
      'answers': [
        "conf route",
        "en/ enable",
        "traceroute",
        "conf t",
        "configure"
      ],
      "answer_key": 'conf t'
    },
    {
      'title': "Pada topologi di atas, PC1 masih tidak dapat berkomunikasi dengan PC3 yang berada di jaringan yang berbeda, hal ini dikarenakan terdapat suatu kesalahan dalam konfigurasinya yaitu…",
      "image": "Gambar Atas",
      'answers': [
        "Gateway pada PC1 seharusnya menggunakan alamat 192.168.2.2",
        "IP address pada PC1 tidak dalam satu subnet IP dengan interface fa0/0 Router0",
        "PC3 harus berada dalam 1 jaringan yang sama dengan PC1 dan PC2",
        "Masing-masing interface pada Router0 tidak menggunakan alamat IP yang sama",
        "Gateway pada PC3 seharusnya menggunakan alamat 192.168.1.2"
      ],
      "answer_key": 'IP address pada PC1 tidak dalam satu subnet IP dengan interface fa0/0 Router0'
    },
  ];
}
