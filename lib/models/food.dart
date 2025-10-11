class Food {
  String nama;
  String harga;
  String imagePath;
  String rating;
  String review;
  List<String> tags;

  Food({
    required this.nama,
    required this.harga,
    required this.imagePath,
    required this.rating,
    required this.review,
    required this.tags,
  });

  String get _nama => nama;
  String get _harga => harga;
  String get _imagePath => imagePath;
  String get _rating => rating;
  String get _review => review;
  List<String> get _tags => tags;
}
