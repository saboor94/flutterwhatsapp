class Product {
  String? productimage;
  String? productname;
  String? productprice;
  String? productdetail;

  Product(productImage, productName, productPrice) {
    this.productimage = productImage;
    this.productname = productName;
    this.productprice = productPrice;
  }
}

List products = [Product('https://cdn.clippingpath.in/wp-content/uploads/2017/11/clipping_path_with_shadow_after_01.jpg', 'XYZ Shoes', '3500')];
