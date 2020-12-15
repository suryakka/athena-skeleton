class Product {
  final int id, price;
  final String title, description, image, category;

  Product(
      {this.id,
      this.price,
      this.category,
      this.title,
      this.description,
      this.image});
}

// list of products
// for our demo

List<Product> chairProducts = [
  Product(
    id: 11,
    price: 56,
    title: 'Classic Leather Arm Chair',
    image: 'assets/images/Item_1.png',
    category: 'chair',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
  Product(
    id: 12,
    price: 68,
    title: 'Poppy Plastic Tub Chair',
    image: 'assets/images/Item_2.png',
    category: 'chair',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
  Product(
    id: 13,
    price: 39,
    title: 'Bar Stool Chair',
    category: 'chair',
    image: 'assets/images/Item_3.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
];

List<Product> sofaProducts = [
  Product(
    id: 21,
    price: 70,
    title: 'Short Glacier Sofa',
    image: 'assets/images/sofa_white.png',
    category: 'sofa',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
  Product(
    id: 22,
    price: 70,
    title: 'Long Glacier Sofa',
    image: 'assets/images/long_white_sofa.png',
    category: 'sofa',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
  Product(
    id: 23,
    price: 70,
    title: 'Brown Sofa',
    image: 'assets/images/brown_sofa.png',
    category: 'sofa',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
];

List<Product> wardrobeProducts = [
  Product(
    id: 31,
    price: 70,
    title: 'Simple Wardrobe',
    image: 'assets/images/lemari-1.png',
    category: 'wardrobe',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
  Product(
    id: 32,
    price: 70,
    title: 'Authentic Wardrobe',
    image: 'assets/images/lemari-2.png',
    category: 'wardrobe',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
  Product(
    id: 33,
    price: 70,
    title: 'Modern Wardrobe',
    image: 'assets/images/lemari-3.png',
    category: 'wardrobe',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
  ),
];

List<Product> allProduct = chairProducts + sofaProducts + wardrobeProducts;
