class Cars {
  int id;
  String name;
  String equipment;
  String price;
  String description;
  String characteristics;
  String video;
  List images;

  Cars(this.id, this.name, this.equipment, this.price, this.characteristics, this.description, this.video, this.images);
}

List<Cars> carsList =
[
  Cars(0, 'Lada Granta', 'STANDARD', 'Цена: 699900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ["https://www.major-lada.ru/images/gallery/gallery_color_car/10518675_240.png", "https://www.major-lada.ru/images/gallery/gallery_big_img/1535539472_02_new_lada_granta_se_background.jpg", "https://www.major-lada.ru/images/gallery/gallery_big_img/1535539472_03_new_lada_granta_se_background.jpg", "https://www.major-lada.ru/images/gallery/gallery_big_img/1535539472_01_new_lada_granta_se_background.jpg"]),
  Cars(1, 'Lada Vesta', 'COMFORT', 'Цена: 1239900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ["https://www.major-lada.ru/images/gallery/gallery_color_car/untitled1_0001_8303142_221png.png", "https://www.major-lada.ru/images/gallery/gallery_big_img/base_photo_img_hd4.jpg", "https://www.major-lada.ru/images/gallery/gallery_big_img/base_photo_img_hd6.jpg", "https://www.major-lada.ru/images/gallery/gallery_big_img/base_photo_img_hd46.jpg"]),
  Cars(2, 'Niva Travel', 'CLASSIC', 'Цена: 1198900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ["https://www.major-lada.ru/images/gallery/gallery_color_car/untitled1_0001_14753024_204png.png", "https://www.major-lada.ru/files/resources/top_nt_1.jpg", "https://www.major-lada.ru/files/resources/4_nt_1.jpg", "https://www.major-lada.ru/files/resources/niva_travel_1.jpg"]),
  Cars(3, 'Niva Legend', 'CLASSIC', 'Цена: 829900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ["https://www.major-lada.ru/images/gallery/gallery_color_car/nivalegendwhite687_transformed.png", "https://www.major-lada.ru/files/resources/main_desktop.jpg", "https://www.major-lada.ru/files/resources/interior_side_legend.jpg", "https://www.major-lada.ru/files/resources/interior1legend.jpg"]),
  Cars(4, 'Москвич 3', 'STANDARD PLUS', 'Цена: 1841000 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ["https://storage.yandexcloud.net/s3-moskvich-new/default/1ee9/37/thumb_1ee9379a-5905-6bb2-a9d5-c93f9bdf4e2a_default_big.png", "https://storage.yandexcloud.net/s3-moskvich-new/default/1ee9/37/thumb_1ee9379a-5905-6bb2-a9d5-c93f9bdf4e2a_default_big.png", "https://storage.yandexcloud.net/s3-moskvich-new/default/1ee9/37/thumb_1ee9379a-5905-6bb2-a9d5-c93f9bdf4e2a_default_big.png", "https://storage.yandexcloud.net/s3-moskvich-new/default/1ee9/37/thumb_1ee9379a-5905-6bb2-a9d5-c93f9bdf4e2a_default_big.png"]),
  Cars(5, 'УАЗ Хантер', 'EXPEDITION', 'Цена: 990900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ["https://www.uaz-rzn.ru/assets/components/phpthumbof/cache/hunter-pre-old.b63744e4e47646542325dfcea8db7220.png", "https://www.uaz-rzn.ru/assets/components/phpthumbof/cache/hunter-pre-old.b63744e4e47646542325dfcea8db7220.png", "https://www.uaz-rzn.ru/assets/components/phpthumbof/cache/hunter-pre-old.b63744e4e47646542325dfcea8db7220.png", "https://www.uaz-rzn.ru/assets/components/phpthumbof/cache/hunter-pre-old.b63744e4e47646542325dfcea8db7220.png"])
];