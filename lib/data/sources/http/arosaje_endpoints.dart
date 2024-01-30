class AROSAJEEndpoints {
  AROSAJEEndpoints._();

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  //Identity base url
  static const String login = '/login';
  static const String register = '/register';
  static const String getPlant = '/photo';
  static const String getPlants = '/all-plants';
  static const String getConseil = '/conseil';
  static const String getConseils = '/all-conseils';
  static const String getUserPlants = '/user-plants/:id_user';
}
