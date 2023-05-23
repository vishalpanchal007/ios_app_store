class Item {
  Item({required this.time, required this.formattedDate});
  final DateTime time;
  final String formattedDate;
}

class Model {
  String image;
  String title;
  String info;
  String get;
  String decscription;

  Model(
      {required this.image,
        required this.title,
        required this.decscription,
        required this.get,
        required this.info});
}

class Model1 {
  String image;
  String title;
  String info;
  String get;
  String decscription;

  Model1(
      {required this.image,
        required this.title,
        required this.decscription,
        required this.get,
        required this.info});
}

List<Model> model = <Model>[
  Model(
      image: "assets/poll.jpg",
      title: "8 Ball Pool",
      decscription: 'Ultimate AR Pool',
      get: "GET",
      info: "in-App Purchases"),
  Model(
      image: "assets/robot.jpg",
      title: "AR Robot",
      decscription: 'Build!Build!Upgrade!',
      get: "GET",
      info: "in-App Purchases"),
];
List<Model1> model1 = <Model1>[
  Model1(
      image: "assets/sky.jpg",
      title: "View Stars Night of Day",
      decscription: 'Ultimate AR Pool',
      get: "Open",
      info: "in-App Purchases"),
  Model1(
      image: "assets/notepad.png",
      title: "AR Robot",
      decscription: 'Build!Build!Upgrade!',
      get: "GET",
      info: "in-App Purchases"),
  Model1(
      image: "assets/robot.jpg",
      title: "AR Robot",
      decscription: 'Build!Build!Upgrade!',
      get: "GET",
      info: "in-App Purchases"),
];
