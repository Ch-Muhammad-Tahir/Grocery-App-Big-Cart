class ProductModel {
  final String productName;
  final String productPrice;
  final String productWeight;
  final bool isFavorite;
  final bool isNew;

  ProductModel.add(
      {required this.productName,
      required this.productPrice,
      required this.productWeight,
      required this.isFavorite,
      required this.isNew});
}
