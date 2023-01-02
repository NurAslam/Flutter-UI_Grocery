import 'package:flutter/material.dart';
import 'package:flutter_ui_grocery/ProductDetail.dart';
import 'package:flutter_ui_grocery/data.dart';

class WidgetCard extends StatelessWidget {
  final Product product;
  const WidgetCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(product: product),
          ),
        );
      },
      child: Card(
        elevation: 2,
        color: Colors.white,
        shadowColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.image,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Rp ${product.price}",
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              product.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 2),
            Text(
              product.quantity,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_shopping_cart,
                  size: 20,
                  color: Colors.green,
                ),
                const SizedBox(width: 2),
                const Text(
                  "Beli",
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.remove_circle_outline,
                      size: 18,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text("0"),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 18,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
