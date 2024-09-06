import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product> rogShop = [
    Product(
      name: 'ROG Zephyrus G16 (2024)',
      price: 999.9,
      imagePath: 'assets/images/Zephyrus_G16.png',
      description: '• Windows 11 Pro\n'
          '• NVIDIA® GeForce RTX™ 4060 Laptop GPU\n'
          '• AMD XDNA™ NPU up to 50TOPS\n'
          '• AMD Ryzen™ AI 9 HX 370 Processor\n'
          '• 16" 2.5K (2560 x 1600, WQXGA) 16:10 240Hz ROG Nebula Display\n'
          '• 2TB M.2 NVMe™ PCIe® 4.0 SSD storage',
    ),
    Product(
      name: 'ROG Strix G16 (2024)',
      price: 1999.9,
      imagePath: 'assets/images/Strix_G16.png',
      description: '• Windows 11 Pro\n'
          '• NVIDIA® GeForce RTX™ 4060 Laptop GPU\n'
          '• Intel® Core™ i9-14900HX Processor\n'
          '• 16" QHD+ (2560 x 1600, WQXGA) 16:10 240Hz ROG Nebula Display\n'
          '• 2TB M.2 NVMe™ PCIe® 4.0 SSD storage',
    ),
    Product(
      name: 'ROG Flow X16 (2023)',
      price: 2999.9,
      imagePath: 'assets/images/Flow_X13.png',
      description: '• Windows 11 Home\n'
          '• NVIDIA® GeForce RTX™ 4070 Laptop GPU\n'
          '• AMD Ryzen™ 9 7940HS Processor\n'
          '• 13.4" QHD+ (2560 x 1600, WQXGA) 16:10 165Hz ROG Nebula Display touchscreen\n'
          '• 1TB M.2 NVMe™ PCIe® 4.0 SSD storage',
    ),
    Product(
      name: 'ROG Zephyrus Duo 16 (2023)',
      price: 3999.9,
      imagePath: 'assets/images/Zephyrus_Duo_16.png',
      description: '• Windows 11 Pro\n'
          '• NVIDIA® GeForce RTX™ 4090 Laptop GPU\n'
          '• AMD Ryzen™ 9 7945HX Processor\n'
          '• 16" QHD+ (2560 x 1600, WQXGA) 16:10 240Hz\n'
          '• 2TB + 2TB M.2 NVMe™ PCIe® 4.0 Performance SSD storage (RAID 0)',
    ),
  ];
  List<Product> userCart = [];

  List<Product> getProducts() => rogShop;

  List<Product> getUserCart() => userCart;

  void addToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}
