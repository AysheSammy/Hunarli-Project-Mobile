class Products {
  int? id;
  String? productName;
  String? sellerUsername;
  double? cost;
  bool? isNew;
  bool? isDiscount;
  bool? isLiked;
  int? likes;

  Products(
      {this.id,
      this.productName,
      this.sellerUsername,
      this.cost,
      this.isNew,
      this.isDiscount,
      this.isLiked,
      this.likes});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['productName'];
    sellerUsername = json['sellerUsername'];
    cost = json['cost'];
    isNew = json['isNew'];
    isDiscount = json['isDiscout'];
    isLiked = json['isLiked'];
    likes = json['likes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['productName'] = this.productName;
    data['sellerUsername'] = this.sellerUsername;
    data['cost'] = this.cost;
    data['isNew'] = this.isNew;
    data['isDiscout'] = this.isDiscount;
    data['isLiked'] = this.isLiked;
    data['likes'] = this.likes;
    return data;
  }
}

class ProductInfos  {
  List<Map<String, dynamic>> products = [
    {
      'id': 0,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '0.jpg'
    },
    {
      'id': 1,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '1.jpg'
    },
    {
      'id': 2,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '2.jpg'
    },
    {
      'id': 3,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '3.jpg'
    },
    {
      'id': 4,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '4.jpg'
    },
    {
      'id': 5,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '5.jpg'
    },
    {
      'id': 6,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '6.jpg'
    },
    {
      'id': 7,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '7.jpg'
    },
    {
      'id': 8,
      'productName': 'Etli Somsa',
      'sellerUsername': 'Ayshe',
      'cost': 20.20,
      'isNew': true,
      'isDiscount': false,
      'isLiked': false,
      'likes': 0,
      'imgUrl': '8.jpg'
    },
  ];

  int get itemCount => products.length;
  
}
