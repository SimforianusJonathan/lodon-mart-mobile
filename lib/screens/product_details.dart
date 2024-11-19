import 'package:flutter/material.dart';
import 'package:lodon_mart/models/product_entry.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product; // Menambahkan parameter product

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    // Menggunakan widget.product untuk mengakses data produk yang diteruskan
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.fields
                  .name, // Mengakses data produk dengan widget.product
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Price: \RP${widget.product.fields.price}",
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 10),
            Text(
              "Description: ${widget.product.fields.description}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
