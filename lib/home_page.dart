import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Container(
              margin: const EdgeInsets.only(top: 0, bottom: 20),
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: double.infinity,

              child: const Text(
                "Our Products",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Featured Products
            const Text(
              "Featured Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            CarouselSlider(
              items: [
                _buildSliderItem(
                  "https://tse3.mm.bing.net/th/id/OIP.QlYv9NAOXEJCPHEH41v9kQHaHa?rs=1&pid=ImgDetMain&o=7&rm=3",
                  "Premium Laptop Collection",
                ),
                _buildSliderItem(
                  "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp16-spacegray-select-202110?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1632788574000",
                  "MacBook Deals",
                ),
                _buildSliderItem(
                  "https://tse3.mm.bing.net/th/id/OIP.raQccEBAztLYu_JcmmPYFAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3",
                  "Audio Collection",
                ),
              ],
              options: CarouselOptions(
                height: 180,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
              ),
            ),

            const SizedBox(height: 20),

            // Shop Our Collection
            const Text(
              "Shop Our Collection",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildProductCard(
                    "https://images.unsplash.com/photo-1517336714731-489689fd1ca8",
                    "MacBook Pro 16\"",
                    "\$2,399",
                  ),
                  _buildProductCard(
                    "https://i5.walmartimages.com/asr/78ff8e5b-5570-4eb2-8ca0-422e4a64d51e.a392ad46e96f707de61a5547318e70d1.jpeg",
                    "Wireless Headphones",
                    "\$299",
                  ),
                  _buildProductCard(
                    "https://tse1.mm.bing.net/th/id/OIP.feBUBQYrS4vE88n4hsk9WAHaEO?rs=1&pid=ImgDetMain&o=7&rm=3",
                    "mouse pad",
                    "\$19",
                  ),
                  _buildProductCard(
                    "https://tse3.mm.bing.net/th/id/OIP.Y57UK4RWddRejoWVy8XC2QHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
                    "Premium Keyboard",
                    "\$9",
                  ),
                  _buildProductCard(
                    "https://m.media-amazon.com/images/I/61ZjlBOp+rL.jpg",
                    "Smart Watch",
                    "\$9",
                  ),
                  _buildProductCard(
                    "https://i5.walmartimages.com/seo/RaceGT-USB-C-Wireless-Computer-Mouse-2-4G-Silent-Cordless-Mouse-Laptop-Type-Portable-6-Buttons-3-Adjustable-DPI-Deskbtop-MacBook-PC_8a7ea4a9-d243-402b-bd72-ed515465a0a4.5b2eb9a3615e78d7bce12d7830def4bf.jpeg",
                    "wirless mouse",
                    "\$9",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Hot Offers
            const Text(
              "Hot Offers 🔥",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Column(
              children: [
                _buildOffer(
                  "50% Off Electronics",
                  "Limited time offer on all tech gadgets",
                  "50% OFF",
                ),
                _buildOffer(
                  "Free Shipping Weekend",
                  "No delivery charges on orders above \$50",
                  "FREE SHIP",
                ),
                _buildOffer(
                  "Buy 2 Get 1 Free",
                  "On selected accessories and peripherals",
                  "B2G1",
                ),
                _buildOffer(
                  "Student Discount",
                  "Extra 20% off with valid student ID",
                  "20% OFF",
                ),
                _buildOffer(
                  "Bundle Deals",
                  "Save more when you buy complete setups",
                  "BUNDLE",
                ),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  static Widget _buildSliderItem(String img, String title) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(img, fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.3)),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildProductCard(String img, String title, String price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.network(
                img,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              price,
              style: const TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  static Widget _buildOffer(String title, String subtitle, String tag) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.black54, fontSize: 13),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.purple, Colors.pink],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
