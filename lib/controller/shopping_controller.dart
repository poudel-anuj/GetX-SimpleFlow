import 'package:get/get.dart';
import 'package:shopp_app/model/product.dart';

class ShoppingController extends GetxController{
  var products = List<Product>().obs;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async{
    await Future.delayed(Duration(seconds:1));

    //suppose these data came from the api
    var productResult = [
      Product(
        id:1,
        price: 200.0,
        productDescription: 'very light',
        productImage: '',
        productName: 'Bag',
      ),
       Product(
        id:1,
        price: 600.0,
        productDescription: 'hard',
        productImage: '',
        productName: 'Glass',
      ),
       Product(
        id:1,
        price: 200.0,
        productDescription: 'good graphics',
        productImage: '',
        productName: 'Laptop',
      ),
       
    ];

    products.value = productResult;
  }
} 