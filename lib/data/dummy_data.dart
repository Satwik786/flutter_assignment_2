import '../models/product.dart';

final List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Fresh Bananas',
    imageUrl:
        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=500&q=60',
    price: 60,
    discount: 10,
    rating: 4.5,
    deliveryTime: '15 mins',
  ),
  Product(
    id: '2',
    name: 'Organic Tomatoes',
    imageUrl:
        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=500&q=60',
    price: 40,
    discount: 5,
    rating: 4.2,
    deliveryTime: '20 mins',
  ),
];
