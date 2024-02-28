class Cars {
  int id;
  String name;
  String pathPhoto;
  String equipment;
  String price;

  Cars(this.id, this.name, this.pathPhoto, this.equipment, this.price);
}

List<Cars> carsList =
    [
      Cars(1, 'Lada Granta', "https://s15.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/lada-granta-1.jpg", 'STANDARD', 'Цена: 699900 рублей'),
      Cars(2, 'Lada Vesta', "https://s1.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/lada-vesta-1.jpg", 'CLASSIC', 'Цена: 1200000 рублей'),
      Cars(3, 'Niva Travel', "https://s16.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/niva-travel.jpg", 'CLASSIC23', 'Цена: 1400000 рублей'),
      Cars(4, 'УАЗ Патриот', "https://s10.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/uaz-patriot.png", 'CLASSIC23 КОНДИЦИОНЕР', 'Цена: 1600000 рублей'),
      Cars(5, 'LADA X-RAY', "https://s3.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/lada-xray.jpg", 'COMFORT23', 'Цена: 1800000 рублей'),
      Cars(6, 'Lada Largus', "https://s13.stc.all.kpcdn.net/expert/wp-content/uploads/2023/01/lada-largus.jpg", 'CLUB23', 'Цена: 2000000 рублей')
    ];