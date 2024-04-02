class User {
  int id;
  String lastName;
  String firstName;
  String patronymic;
  String email;
  String photo;

  User(
      this.id,
      this.lastName,
      this.firstName,
      this.patronymic,
      this.email,
      this.photo
      );
}

List<User> personalDataUser = [
  User(0,
    'Лосев',
    'Сергей',
    'Александрович',
    's.losev9.21@gmail.com',
    "https://e7.pngegg.com/pngimages/924/519/png-clipart-user-profile-computer-icons-business-customer-customer-relationship-business-rim.png",
  )
];