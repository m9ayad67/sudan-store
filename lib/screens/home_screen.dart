import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({super.key});

@override
State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex = 0;

final List<Map<String, dynamic>> categories = [
{'name': 'إلكترونيات', 'icon': Icons.phone_android},
{'name': 'ملابس', 'icon': Icons.checkroom},
{'name': 'أجهزة منزلية', 'icon': Icons.kitchen},
{'name': 'إكسسوارات', 'icon': Icons.watch},
];

final List<Map<String, dynamic>> products = [
{
'name': 'هاتف ذكي',
'price': '350,000',
'icon': Icons.smartphone,
},
{
'name': 'ساعة ذكية',
'price': '85,000',
'icon': Icons.watch,
},
{
'name': 'سماعة بلوتوث',
'price': '45,000',
'icon': Icons.headphones,
},
{
'name': 'لابتوب',
'price': '650,000',
'icon': Icons.laptop,
},
];

@override
Widget build(BuildContext context) {
return Directionality(
textDirection: TextDirection.rtl,
child: Scaffold(
backgroundColor: const Color(0xFFF5F6FA),

    appBar: AppBar(
      backgroundColor: const Color(0xFF087A43),
      foregroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'متجر السودان 🇸🇩',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    ),

    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'أهلاً بك في متجر السودان ❤️',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'كل احتياجاتك في مكان واحد',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: 'ابحث عن منتج...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: const Color(0xFF087A43),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تسوق بسهولة وأمان',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'اكتشف أفضل المنتجات والأسعار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'الأقسام الرئيسية',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              height: 105,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 95,
                    margin: const EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          categories[index]['icon'],
                          color: const Color(0xFF087A43),
                          size: 30,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categories[index]['name'],
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'منتجات مميزة',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        products[index]['icon'],
                        size: 55,
                        color: const Color(0xFF087A43),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        products[index]['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${products[index]['price']} جنيه',
                        style: const TextStyle(
                          color: Color(0xFF087A43),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Icon(
                        Icons.add_shopping_cart,
                        color: Color(0xFF087A43),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ),

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      selectedItemColor: const Color(0xFF087A43),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'الأقسام',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'المفضلة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'حسابي',
        ),
      ],
    ),
  ),
);

}
}
