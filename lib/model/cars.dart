import 'package:flutter/material.dart';

class Cars {
  int id;
  String name;
  String equipment;
  int price;
  String description;
  List characteristics;
  String video;
  List images;
  bool statusFavoriteSelected;
  Color colorFavoriteButton;
  bool statusCartSelected;
  Color colorCartButton;
  int count;
  bool isButtonDisabled;

  Cars(
      this.id,
      this.name,
      this.equipment,
      this.price,
      this.characteristics,
      this.description,
      this.video,
      this.images,
      this.statusFavoriteSelected,
      this.colorFavoriteButton,
      this.statusCartSelected,
      this.colorCartButton,
      this.count,
      this.isButtonDisabled
      );
}

List<Cars> carsList =
[
  Cars(0,
      'Lada Granta',
      'STANDARD',
      699900,
      [
        '1.6 л',
        'АИ-95',
        '87 л.с.',
        'Передний',
        'Механика',
        '11.6 с',
        'Бензиновый',
        '7.5 л'
      ],
      'Семейство переименованных моделей российских переднеприводных автомобилей малого класса Волжского автомобильного завода, ранее носивших название «Лада Калина», выпускаемых с 2011 г. Первоначально семейство состояло из упрощённого, удешевлённого, отделённого от семейства «Калина» кузова типа седан и созданного на его основе кузова лифтбек, а с 2018 года — также включает в себя все остальные типы кузовов семейства «Калина». Выпуск начался 16 мая 2011 года, продажи — в конце декабря 2011 года.',
      "https://youtu.be/1peJiLKMzzk?si=QssUv1E6l0idqDgh",
      [
        "https://www.major-lada.ru/images/gallery/gallery_color_car/10518675_240.png",
        "https://www.major-lada.ru/images/gallery/gallery_big_img/1535539472_02_new_lada_granta_se_background.jpg",
        "https://www.major-lada.ru/images/gallery/gallery_big_img/1535539472_03_new_lada_granta_se_background.jpg",
        "https://www.major-lada.ru/images/gallery/gallery_big_img/1535539472_01_new_lada_granta_se_background.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(1,
      'Lada Vesta',
      'COMFORT',
      1239900,
      [
        '1.6 л',
        'АИ-92',
        '106 л.с.',
        'Передний',
        'Механика',
        '11.2 с',
        'Бензиновый',
        '6.9 л'
      ], 'Семейство российских автомобилей среднего класса, выпускаемых АвтоВАЗом с 25 сентября 2015 года в кузове седан, и с 2017 года в кузове универсал. Головной моделью семейства является седан, носящий по отраслевой нормали ОН 025270-66 LADA-2180. Заменило семейство LADA Priora в модельной линейке. Представляет собой пятое поколение легковых автомобилей LADA. Старт продаж Vesta состоялся 25 ноября 2015 года. Самый продаваемый автомобиль в России в 2018 и 2021 годах.',
      "https://youtu.be/2wPSadTKjpo?si=3Sd-9Z1-siPzXvt2",
      [
        "https://www.major-lada.ru/images/gallery/gallery_color_car/untitled1_0001_8303142_221png.png",
        "https://www.major-lada.ru/images/gallery/gallery_big_img/base_photo_img_hd4.jpg",
        "https://www.major-lada.ru/images/gallery/gallery_big_img/base_photo_img_hd6.jpg",
        "https://www.major-lada.ru/images/gallery/gallery_big_img/base_photo_img_hd46.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(2,
      'Niva Travel',
      'CLASSIC',
      1198900,
      [
        '1.7 л',
        'АИ-95',
        '80 л.с.',
        'Полный',
        'Механика',
        '19.0 с',
        'Бензиновый',
        '10.2 л'
      ], 'Также ранее обозначавшийся как ВАЗ-2123, Chevrolet Niva и LADA Niva, разг. «Шéви-Нива, Шнива» — российский автомобиль повышенной проходимости ВАЗ. Представляет собой второе поколение автомобилей повышенной проходимости Волжского автомобильного завода и является «преемником» модели ВАЗ-2121 «Нива». Имеет постоянный полный привод на четыре колеса, двухступенчатую раздаточную коробку и межосевой блокируемый дифференциал.',
      "https://youtu.be/9Zjh_n91Pfc?si=9JTxlNtlfzNVd4oL",
      [
        "https://www.major-lada.ru/images/gallery/gallery_color_car/untitled1_0001_14753024_204png.png",
        "https://www.major-lada.ru/files/resources/top_nt_1.jpg",
        "https://www.major-lada.ru/files/resources/4_nt_1.jpg",
        "https://www.major-lada.ru/files/resources/niva_travel_1.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(3,
      'Niva Legend',
      'CLASSIC',
      829900,
      [
        '1.7 л',
        'АИ-95',
        '83 л.с.',
        'Полный',
        'Механика',
        '17.0 с',
        'Бензиновый',
        '9.9 л'
      ], 'Код кузова ВАЗ-2121 для трёхдверной модели и ВАЗ-2131 для пятидверной, в разное время также выпускалась под названиями Lada Niva, LADA 4x4 и LADA Niva Legend — советский и российский автомобиль повышенной проходимости — внедорожник малого класса с несущим кузовом и постоянным полным приводом. Серийно производится с 5 апреля 1977 года (до 2006 года продавался под именем ВАЗ-2121 «Ни́ва» на внутреннем рынке, и как Lada Niva на экспортных рынках, с 2006 по 2021 годы под именем LADA 4x4, с 2021 года — LADA Niva Legend).',
      "https://youtu.be/YqKTaxlQv_M?si=s5Cm24fhJ2c3MXhm",
      [
        "https://www.major-lada.ru/images/gallery/gallery_color_car/nivalegendwhite687_transformed.png",
        "https://www.major-lada.ru/files/resources/main_desktop.jpg",
        "https://www.major-lada.ru/files/resources/interior_side_legend.jpg",
        "https://www.major-lada.ru/files/resources/interior1legend.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(4,
      'Москвич 3',
      'STANDARD',
      1830000,
      [
        '1.5 л',
        'АИ-92',
        '136 л.с.',
        'Передний',
        'Механика',
        '11.0 с',
        'Бензиновый',
        '6.9 л'
      ], 'Легковой автомобиль, серийно выпускаемый с 23 ноября 2022 года на российском заводе «Москвич» (планируемый конвейер завода «Рено-Россия» ещё не задействован). Автомобиль представляет собой китайский кроссовер Sehol X4 (JAC JS4), транспортируемый в Россию из Китая в разобранном виде и затем собираемый методом крупноузловой сборки.',
      "https://youtu.be/niDAP-AP1SU?si=UZy8hMg_oL8bItBf",
      [
        "https://storage.yandexcloud.net/s3-moskvich-new/default/0001/01/b9ce391f002279257994ba86c3344b88f461938b.png",
        "https://alfaleasing.ru/catalog-next/_next/image/?url=https://autoxml.4px.tech/cdn/original/photo/1927/143998465326d293a694.jpg&w=3840&q=70",
        "https://avatars.dzeninfra.ru/get-zen_doc/4080549/pub_63a4ddb55d660b458be08f33_63a4de57dd8a477d9a53cd15/scale_1200",
        "https://avatars.mds.yandex.net/get-autoru-vos/5966122/51e0f80c08ea79e1ab919cdd4b8311d8/1200x900"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(5,
      'УАЗ Хантер',
      'ЭКСПЕДИЦИОННЫЙ',
      990900,
      [
        '2.7 л',
        'АИ-92',
        '128 л.с.',
        'Полный',
        'Механика',
        '35.0 с',
        'Бензиновый',
        '13.2 л'
      ], 'Автомобиль повышенной проходимости (внедорожник) для эксплуатации на дорогах всех категорий, а также на пересечённой местности. Автомобиль, представляющий собой дальнейшее развитие моделей УАЗ-469/УАЗ-3151, выпускается Ульяновским автозаводом с 2003 года.',
      "https://youtu.be/hA_YXx2Bqrw?si=7tt_BpZivEGwb9Wm",
      [
        "https://www.uaz-rzn.ru/assets/components/phpthumbof/cache/hunter-pre-old.b63744e4e47646542325dfcea8db7220.png",
        "https://www.uaz.ru/data/uploads/uaz/originals/a982c337-9b29-4e49-9593-a42f64e51456.jpg",
        "https://two-auto.ru/wp-content/uploads/2019/06/49899.jpg",
        "https://i.trse.ru/2020/08/ev49.jpeg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(6,
      'Москвич 6',
      'COMFORT',
      1536000,
      [
        '1.5 л',
        'АИ-95',
        '136 л.с.',
        'Передний',
        'Вариатор',
        '10.4 с',
        'Бензиновый',
        '7.5 л'
      ], 'Легковой автомобиль, представленный Московским автомобильным заводом Москвич в апреле 2023 года. Является лицензионной копией китайского лифтбэка JAC Sehol A5.',
      "https://youtu.be/KqeY4-KKaDg?si=vdnwvvYi4l8hFr3o",
      [
        "https://www.avtogermes.ru/images/marks/moskvich/moskvich-6/i/colors/wh1_0/7172b43c3dbc0a37f7589953a7628b88.png",
        "https://www.avtogermes.ru/images/models/exterior/e7d338542f8602ed862853621c2f18ea.jpg",
        "https://www.avtogermes.ru/images/models/exterior/9b52a508831400037f4aa19a7ea2d59d.jpg",
        "https://www.avtogermes.ru/images/models/exterior/34501811ea1aac70ec8952107c56197a.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(7,
      'УАЗ PATRIOT',
      'BASE ИКАР',
      1496000,
      [
        '2.7 л',
        'АИ-92',
        '135 л.с.',
        'Полный',
        'Механика',
        '20.0 с',
        'Бензиновый',
        '11.75 л'
      ], 'Полноприводный автомобиль повышенной проходимости (вседорожник) для эксплуатации на дорогах всех категорий, а также по пересечённой местности. Представляет собой IV поколение автомобилей повышенной проходимости ГАЗ/УАЗ, является рестайлинговой модификацией модели УАЗ-3162 и «преемником» модели УАЗ-469 (3151) — серийно выпускается Ульяновским автозаводом с августа 2005 года. Автомобиль оснащён цельнометаллическим пятидверным кузовом и предназначен для эксплуатации на дорогах всех категорий, а также в сельской местности. В прежние годы производился под именем собственным «Симбир».',
      "https://youtu.be/GIpSekVc4Ok?si=sh4A_RFrmLdb9KDp",
      [
        "https://imgproxy.autocrm.ru/Ji1wmVdwhpbRuzaEwf1CsZiVaeS9QRM5r-pGwXShXIQ/rs:auto:300:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIyMzc3LzcvYjE2M2I2MWVmOC5wbmc.png",
        "https://imgproxy.autocrm.ru/HUBzCn5AOTvOvaD3gtcT2pHmPirZvOf2j5QvStciWvE/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIyMzc3LzQvMmI2ZjMzZTJiZS5wbmc.png",
        "https://imgproxy.autocrm.ru/e7vfGzQefZUmRLnU0LsGNbExokDDZgdytGcuNiWhKZ8/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIyMzgzLzEvYWJmMjNkZmFlZS5qcGc.jpg",
        "https://img.zr.ru/_ah/img/bYn9FzSLALFb6QcvU6BALw"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(8,
      'УАЗ PICKUP',
      'BASE ИКАР',
      1505000,
      [
        '2.7 л',
        'АИ-95',
        '135 л.с.',
        'Полный',
        'Механика',
        '19.0 с',
        'Бензиновый',
        '12.3 л'
      ], 'Поступил в серийное производство в 2008 году. Он создан на базе полноприводного внедорожника УАЗ Патриот. УАЗ Пикап получил последнее обновление в 2015 году. Он обладает 4-дверной 5-местной кабиной и удлинённой до 3 000 мм колёсной базой. Современное поколение также обзавелось множеством полезных систем и опций.',
      "https://youtu.be/sspkaaLtGIk?si=WFnt-liAj8iqAFZB",
      [
        "https://imgproxy.autocrm.ru/PJtQsn68OQIo6HYpIbryz6y8nwugJwElv7oJiKHzyEI/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzg5Ny83LzQ1MDVjMjUzN2EucG5n.png",
        "https://imgproxy.autocrm.ru/nyCXYWkc-1b8YZzs50xPbIFLxy_2AZJlW5dhRI1SZGk/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzg5Ny80LzUxNmY5MGUyNzAucG5n.png",
        "https://imgproxy.autocrm.ru/44YuzYRwrJzGW_mMFgXl-50hs5HEMnjmkiI5iY5_PwA/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzg5Ny8xLzA4YWYwMWI0NGQucG5n.png",
        "https://pkfst.ru/800/600/https/mtdata.ru/u8/photo0CB5/20890369138-0/original.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
  Cars(9,
      'УАЗ двухрядная кабина с бортом',
      'BASE ИКАР',
      1630000,
      [
        '1.6 л',
        'АИ-92',
        '106 л.с.',
        'Передний',
        'Механика',
        '11.2 с',
        'Бензиновый',
        '6.9 л'
      ], '5-местный автомобиль с двойной кабиной. Он предназначен для коммерческих перевозок. УАЗ Профи с двухрядной кабиной предназначен для перевозки грузов массой до 1 300 кг., а также для доставки на место бригады до 5 человек. УАЗ Профи с двойной кабиной имеет вместительную грузовую платформу размером 2350×1870 мм, в ней размещаются 3 европалеты.',
      "https://youtu.be/kF4NPtDc23M?si=VovPyhztmIIT2azU",
      [
        "https://imgproxy.autocrm.ru/IIT-NRmRziOa-A7PZIYqebn_YIQtZ_LFoev7GO3PqL4/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIxODkwLzcvM2MwMzUyNDc1Mi5wbmc.png",
        "https://imgproxy.autocrm.ru/HKot0dFFowAlPBcCekFJ4zyLS-QbEGOkTf0kH4ICHBw/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIxODkwLzQvMGUzNzc0ZjYwOS5wbmc.png",
        "https://imgproxy.autocrm.ru/x_T4sgtNCywWk-dQ_Xw-fYYEx-PQVhkJGrTOgp_0-1s/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIxODkwLzEvYTAxMDVhYzAxZC5wbmc.png",
        "https://imgproxy.autocrm.ru/BHmWiA6yYDdHOCdedyEcCyYN60ld9NSFhmhg54piTME/rs:auto:765:0:1/dpr:1/q:100/g:sm/aHR0cHM6Ly8xOTUwMDQuc2VsY2RuLnJ1L3JlZi9jYXRhbG9nLzIxODkwLzEyL2Y1N2M3ZTVkODguanBn.jpg"
      ],
      false,
      Colors.black,
      false,
      Colors.black,
      1,
      true
  ),
];