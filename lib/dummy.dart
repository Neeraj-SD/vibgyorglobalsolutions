import 'package:vibgyorglobalsolutions/models/category.dart';

import 'models/Item.dart';
import 'models/filter.dart';

final List<Category> categoriesList = [
  Category(
    name: 'Fruits & vegetables',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEkcfwO4_AzHTBWbx9kY9jFcoClfmI6JZtTA&usqp=CAU',
  ),
  Category(
    name: 'Cooking essentials',
    image:
        'https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/543763370/types-of-cooking-oils.jpg?quality=82&strip=1',
  ),
  Category(
    name: 'Munchies',
    image:
        'https://static7.depositphotos.com/1002351/701/i/600/depositphotos_7011130-stock-photo-healthy-munchies.jpg',
  ),
  Category(
    name: 'Dairy, Bread & Batter',
    image:
        'https://media.istockphoto.com/photos/various-fresh-dairy-products-picture-id544807136?k=20&m=544807136&s=612x612&w=0&h=iqb23gbUKWgewmunHXd_yzJbYsZDa0fMDz64Ux6OJSc=',
  ),
  Category(
    name: 'Beverages',
    image: 'https://thumbs.dreamstime.com/z/cans-beverages-19492376.jpg',
  ),
];

final List<Item> items = [
  Item(
    name: 'Onion',
    image: 'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c21f.png',
    actualPrice: 24,
    discountPrice: 20,
    filter: 'Fresh vegetables',
  ),
  Item(
    name: 'Tomato Local',
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Bright_red_tomato_and_cross_section02.jpg/1200px-Bright_red_tomato_and_cross_section02.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Fresh Fruits',
  ),
  Item(
    name: 'Watermelon',
    image:
        'https://www.shreethamanaa.com/wp-content/uploads/2020/09/KIRAN-WATERMELON-600x600.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Fresh Fruits',
  ),
  Item(
    name: 'Tender Coconut',
    image:
        'https://image.shutterstock.com/image-photo/young-coconut-isolated-on-white-600w-1812058585.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Summer fruits',
  ),
  Item(
    name: 'Chilli Green',
    image:
        'https://www.jiomart.com/images/product/original/590003533/green-chilli-200-g-product-images-o590003533-p590003533-0-202203150435.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Fresh vegetables',
  ),
  Item(
    name: 'Cucumber Green',
    image:
        'https://fruitznveggies.com/wp-content/uploads/2020/09/9.-khira-Kheera-Cucumber-Green.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Fresh vegetables',
  ),
  Item(
    name: 'Chilli Green',
    image:
        'https://www.jiomart.com/images/product/original/590003533/green-chilli-200-g-product-images-o590003533-p590003533-0-202203150435.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Fresh vegetables',
  ),
  Item(
    name: 'Cucumber Green',
    image:
        'https://fruitznveggies.com/wp-content/uploads/2020/09/9.-khira-Kheera-Cucumber-Green.jpg',
    actualPrice: 32,
    discountPrice: 27,
    filter: 'Fresh vegetables',
  ),
];

final List<Filter> filters = [
  Filter(
      name: 'All',
      image:
          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2022%2F01%2F06%2F5-best-fruits-for-constipation-according-to-a-registred-dietitian.jpg'),
  Filter(
    name: 'Summer fruits',
    image:
        'https://cdn.cdnparenting.com/articles/2019/03/14174037/264191096-H-768x525.webp',
  ),
  Filter(
      name: 'Fresh Fruits',
      image: 'https://www.mumbaionlineflorists.com/images/FFHNUUN101_big.jpg'),
  Filter(
      name: 'Fresh vegetables',
      image:
          'https://mh-2-stockagency.panthermedia.net/media/previews/0027000000/27000000/~colourful-farm-fresh-vegetables-and-fruit_27000357_high.jpg')
];
