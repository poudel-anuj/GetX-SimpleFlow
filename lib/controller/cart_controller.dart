import 'package:get/state_manager.dart';
import 'package:shopp_app/model/product.dart';

class CartController extends GetxController{
  var cartItems = List<Product>().obs;
  double get totalPrice => cartItems.fold(0,(sum,item) => sum + item.price);
  int get count =>  cartItems.length;
  
  addToCart(Product product){
    cartItems.add(product);
  }
}