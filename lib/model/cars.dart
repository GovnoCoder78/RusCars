class Cars {
  int id;
  String name;
  String pathPhoto;
  String equipment;
  String price;
  String description;
  String characteristics;
  String video;
  List images;

  Cars(this.id, this.name, this.pathPhoto, this.equipment, this.price, this.characteristics, this.description, this.video, this.images);
}

List<Cars> carsList =
[
  Cars(1, 'Lada Granta', "https://s15.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/lada-granta-1.jpg", 'STANDARD', 'Цена: 699900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ['Изображение 1', 'Изображение 2', 'Изображение 3']),
  Cars(2, 'Lada Vesta', "https://s1.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/lada-vesta-1.jpg", 'COMFORT', 'Цена: 1239900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ['Изображение 1', 'Изображение 2', 'Изображение 3']),
  Cars(3, 'Niva Travel', "https://s16.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/niva-travel.jpg", 'CLASSIC', 'Цена: 1198900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ['Изображение 1', 'Изображение 2', 'Изображение 3']),
  Cars(4, 'Niva Legend', "https://s1.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/niva-legend-1.jpg", 'LUXE', 'Цена: 999900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ['Изображение 1', 'Изображение 2', 'Изображение 3']),
  Cars(5, 'Москвич 3', "https://storage.yandexcloud.net/s3-moskvich-new/default/1ee9/37/thumb_1ee9379a-5905-6bb2-a9d5-c93f9bdf4e2a_default_big.png", 'STANDARD PLUS', 'Цена: 1841000 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ['Изображение 1', 'Изображение 2', 'Изображение 3']),
  Cars(6, 'УАЗ Хантер', "https://www.uaz-rzn.ru/assets/components/phpthumbof/cache/hunter-pre-old.b63744e4e47646542325dfcea8db7220.png", 'EXPEDITION', 'Цена: 990900 рублей', 'Описание', 'Характеристики', 'Ссылка на видео', ['Изображение 1', 'Изображение 2', 'Изображение 3'])
];