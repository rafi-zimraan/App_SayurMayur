class Product {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Product(
    this.name,
    this.price,
    this.quantity,
    this.image,
    this.description,
  );
}

final List<Product> allData = [
  Product('Apel', '5.000', '1kg', 'assets/sayurKol.png',
      'Sayuran yang mempunyai zat yang menyehatkan untuk tubuh yang membutuhkan cairan yang banyak'),
  Product('Duren', '45.000', '100Biji', 'assets/buahDuren.png',
      'Duren yang mempunyai zat yang menyehatkan tenggorokan,sehingga moodBoster menjadi lebih fity dan cerah seharian'),
  Product('Stauberry', '89.000', '9kg', 'assets/buahStaubery.png',
      'Stauberry yang mempunyai zat yang menyehatkan untuk wanita yang cantik serta mempunyai paras yang menawan'),
  Product('Tomat', '16.000', '1Kg', 'assets/buahTomat.png',
      'tomat yang mempunyai zat yang menyehatkan bagi wajah yang banyak muncul jerawat, untuk uprage kulit yang mati'),
  Product('Brocoli', '35.000', '1.4 ons', 'assets/sayurBrocoli.png',
      'brocoli yang mempunyai zat yang menyehatkan untuk kesempurnaan tubuh yang sehat dan awet muda'),
  Product('Lada', '12.000', '20Gram', 'assets/sayurLada.png',
      'lada yang mempunyai zat yang menyehatkan untuk people yang menyukai vegetarian, yang membrikan kelayakan zat besi untuk tubuh manusia'),
];
