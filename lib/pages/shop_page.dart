import 'package:flutter/material.dart';
import 'package:shop_app/components/product_tile.dart';
import 'package:shop_app/models/product.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Republic of Gamers",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: TextField(
            cursorRadius: const Radius.circular(100.0),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              hintText: 'Search',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.symmetric(horizontal: 20),
        //   padding: const EdgeInsets.all(15),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(50),
        //     border: Border.all(
        //       color: Colors.red,
        //       width: 2.0,
        //     ),
        //   ),
        //   child: const Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         "Search",
        //         style: TextStyle(
        //           color: Colors.white,
        //         ),
        //       ),
        //       Icon(
        //         Icons.search,
        //         color: Colors.white,
        //       ),
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hot Products",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Product product = Product(
                name: 'ROG Zephyrus G16 (2024)',
                price: 1999.9,
                imagePath: 'assets/images/Zephyrus_G16.png',
                description: '• Windows 11 Pro\n• NVIDIA® GeForce RTX™ 4060 Laptop GPU\n• AMD XDNA™ NPU up to 50TOPS\n• AMD Ryzen™ AI 9 HX 370 Processor\n• 16" 2.5K (2560 x 1600, WQXGA) 16:10 240Hz ROG Nebula Display\n• 2TB M.2 NVMe™ PCIe® 4.0 SSD storage',
              );
              return ProductTile(
                product: product,
              );
            },
          ),
        )
      ],
    );
  }
}
