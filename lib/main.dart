import 'package:flutter/material.dart';
import 'package:untitled56/tarixiy_joylar.dart';
import 'package:untitled56/next_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TarixiyJoylar> tarixiyList = [
    TarixiyJoylar(
        rasm: 'rasm/Samarqand.jpg',
        nomi: "Samarqand",
        malumot:
            "Samarqand — Oʻzbekiston Respublikasi Samarqand viloyatidagi qadimiy shahar. Viloyatning maʼmuriy, iqtisodiy va madaniy markazi (1938-yildan). 1925—30 yillarda Respublika poytaxti. Oʻzbekistonning janubi-gʻarbida, Zarafshon vodiysining markaziy qismida (Dargʻom va Siyob kanallari orasida) joylashgan. Oʻrtacha 695 m balandlikda. Toshkentdan 300 km. Samarqanddan Toshkent—Dushanbe, Toshkent—Turkmanboshi, Toshkent—Uchquduq—Qo'ngʻirot temir yoʻllari, Katta Oʻzbek trakti (Toshkent—Termiz yo'li) oʻtadi. Shahar aholisi va xoʻjaliklari Shovdor, Bogʻishamol ariqlaridan suv oladi. Iyulning oʻrtacha harorati 25,9°, eng baland harorat 40—42°, yanvar oʻrtacha harorati 0,2°, eng past harorat —26°. Maydoni 120 km². Aholisi 519600 ming kishi (2016). Samarqand shahar Kengashiga qarashli 4 shaharcha (Ingichka, Kimyogarlar, Farhod, Hishrov) mavjud. 2022-yilning 15–16-sentabr kunlari ShHTga aʼzo davlat rahbarlarining tartib boʻyicha 22-yigʻilish boʻlgan Samarqand sammiti boʻlib oʻtgan."),
    TarixiyJoylar(
        rasm: 'rasm/buxoro.jpg',
        nomi: "Buxoro",
        malumot:
            "Buxoro — Oʻzbekiston Respublikasining qadimiy shaharlaridan biri, Buxoro viloyatining maʼmuriy, iqtisodiy va madaniy markazi. Buyuk ipаk yoʻlida yirik tijorat markazlaridan boʻlgan. Oʻzbekistonning janubiy-gʻarbida, Zarafshon daryosi quyi oqimida joylashgan. Toshkentdan 616 km. Buxoro 2 ta shahar rayoni (Fayzulla Xoʻjayev va Toʻqimachilik)ga boʻlingan. Aholisi 290000 (2019)."),
    TarixiyJoylar(
        rasm: 'rasm/xiva.jpg',
        nomi: "Xiva",
        malumot:
            "Xiva – Oʻzbekiston Respublikasining Xorazm viloyatidagi shahar. Xiva shahri markazi. Oʻzbekistonning shimoliy gʻarbida, Xorazm viloyatning janubida, Amudaryoning chap sohilida, daryodan 40 km janubida, 95 m balandlikda joylashgan. Shahar yonidan Polvonyop (qadimiy Xeykaniq) kanali oʻtgan. Yaqin temir yoʻl stansiyasi – Urganch (30 km). Maydoni 0,08 ming km². 2022-yil 1-yanvar holatiga Xiva tuman doimiy aholisining soni 149 698 kishi, Xiva shahri – 95 246 kishini tashkil qilgan.[1] Shaharning qadimgi qismidagi juda koʻp arxitektura yodgorliklariga boy boʻlgan Ichan-Qal’a Sharqning ekzotik shahar timsolini oʻzida saqlab qolgan afsonaviy shahardir.[2]"),
    TarixiyJoylar(
        rasm: 'rasm/shaxrisabiz.jpg',
        nomi: "Shaxrisabz",
        malumot:
            "Shahrisabz ( oʻzb. Shahrisabz ) — Oʻzbekiston Respublikasi Qashqadaryo viloyati (viloyat)dagi shahar. 16-asrgacha Oʻrta Osiyodagi eng qadimgi shaharlardan biri Kesh nomi bilan mashhur.[2] Shahrisabz — Oʻzbekiston Respublikasining Qashqadaryo viloyatidagi shahar, shimolda Qashqadaryo Oqsuv va janubda Tanxazdaryo irmoqlari oraligʻida joylashgan. Aholisi 2014 yil 1 yanvar holatiga 100,3 ming kishi, 1991 yilda 53 ming kishi. Aholining asosiy qismini oʻzbeklar tashkil etadi.[3] 1959-yilda Shahrisabz viloyatining mustaqil boʻlinmasi boʻlishni toʻxtatib, Shahrisabz shahri tarkibiga kiruvchi aeroport va Kitob vokzallari mavjud.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarixiy Joylar"),
      ),
      body: ListView.builder(
          itemCount: tarixiyList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => NextScreen(
                              tarixiyJoylar: tarixiyList[index],
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.black)),
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        height: 200,
                        width: 300,
                        child:
                            Image(image: AssetImage(tarixiyList[index].rasm))),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black)),
                      child: Text(
                        tarixiyList[index].nomi,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
