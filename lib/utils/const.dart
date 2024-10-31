import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const greenColor = Color(0xFF53B175);
const whiteColor = Color(0xFFFFFFFF);
const blackColor = Color(0xFF030303);
const greyColor = Color(0xFF7C7C7C);
const yellowGradColor = Color(0xFFF8A44C);
const orangeGradColor = Color(0xFFF7A593);
const purpleGradColor = Color(0xFFD3B0E0);
const blueGradColor = Color(0xFFB7DFF5);
const backgroundColor = Color(0xFFF2F3F2);

TextStyle fontRegular =
    GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w400);
TextStyle fontMedium =
    GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w500);
TextStyle fontSemiBold =
    GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w600);
TextStyle fontBold =
    GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w700);
TextStyle fontExtraBold =
    GoogleFonts.montserrat().copyWith(fontWeight: FontWeight.w900);

List<String> bannerData = [
  "assets/images/banner1.png",
  "assets/images/banner2.png",
  "assets/images/banner3.png"
];

List productData = [
  {
    "id": 1,
    "name": "Organic Banana",
    "price": 4.99,
    "description":
        "Organic bananas are bananas that are grown without man-made pesticides or herbicides, and are only in contact with natural fertilizers or composted organic material. The seeds are also organic, which means they are not from GMOs.",
    "category": "Fruits & Vegetable",
    "image": "assets/product/banana.png",
    "rating": {"rate": 3.9, "count": 120}
  },
  {
    "id": 2,
    "name": "Red Apple",
    "price": 7.33,
    "description":
        "Red Delicious apples are a classic variety of apple that are medium to large in size, with a deep red color and a conical shap",
    "category": "Fruits & Vegetable",
    "image": "assets/product/apple.png",
    "rating": {"rate": 4.1, "count": 259}
  },
  {
    "id": 3,
    "name": "Ginger",
    "price": 3.99,
    "description":
        "Ginger is a perennial plant with a thick, knotted underground stem called a rhizome, and it's known for its spicy flavor and aroma",
    "category": "Fruits & Vegetable",
    "image": "assets/product/ginger.png",
    "rating": {"rate": 4.7, "count": 500}
  },
  {
    "id": 4,
    "name": "Red bell peppers",
    "price": 5.99,
    "description":
        "Red bell peppers have a smooth, uniformly colored skin and three to four thick-walled lobes. They are botanically classified as berries and are mostly hollow, with a large number of cream-colored seeds",
    "category": "Fruits & Vegetable",
    "image": "assets/product/bell_pepper_red.png",
    "rating": {"rate": 2.1, "count": 430}
  },
  {
    "id": 5,
    "name": "Beef bone",
    "price": 19.5,
    "description":
        "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
    "category": "jewelery",
    "image": "assets/product/beef.png",
    "rating": {"rate": 4.6, "count": 400}
  },
  {
    "id": 6,
    "name": "Broiler chicken",
    "price": 168,
    "description":
        "Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.",
    "category": "jewelery",
    "image": "assets/product/chicken.png",
    "rating": {"rate": 10.9, "count": 70}
  },
  {
    "id": 7,
    "name": "Coca Cola Can",
    "price": 3.99,
    "description":
        "Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...",
    "category": "jewelery",
    "image": "assets/product/coca_cola.png",
    "rating": {"rate": 3, "count": 400}
  },
  {
    "id": 8,
    "name": "Sprite",
    "price": 3.99,
    "description":
        "Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel",
    "category": "jewelery",
    "image": "assets/product/sprite.png",
    "rating": {"rate": 3.9, "count": 100}
  },
  {
    "id": 9,
    "name": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
    "price": 64,
    "description":
        "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
    "rating": {"rate": 3.3, "count": 203}
  },
  {
    "id": 10,
    "name": "SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s",
    "price": 109,
    "description":
        "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
    "rating": {"rate": 2.9, "count": 470}
  },
  {
    "id": 11,
    "name":
        "Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5",
    "price": 109,
    "description":
        "3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg",
    "rating": {"rate": 4.8, "count": 319}
  },
  {
    "id": 12,
    "name":
        "WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive",
    "price": 114,
    "description":
        "Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer's limited warranty",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg",
    "rating": {"rate": 4.8, "count": 400}
  },
  {
    "id": 13,
    "name": "Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin",
    "price": 599,
    "description":
        "21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg",
    "rating": {"rate": 2.9, "count": 250}
  },
  {
    "id": 14,
    "name":
        "Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED ",
    "price": 999.99,
    "description":
        "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg",
    "rating": {"rate": 2.2, "count": 140}
  },
  {
    "id": 15,
    "name": "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats",
    "price": 56.99,
    "description":
        "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg",
    "rating": {"rate": 2.6, "count": 235}
  },
  {
    "id": 16,
    "name":
        "Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket",
    "price": 29.95,
    "description":
        "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
    "rating": {"rate": 2.9, "count": 340}
  },
  {
    "id": 17,
    "name": "Rain Jacket Women Windbreaker Striped Climbing Raincoats",
    "price": 39.99,
    "description":
        "Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn't overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg",
    "rating": {"rate": 3.8, "count": 679}
  },
  {
    "id": 18,
    "name": "MBJ Women's Solid Short Sleeve Boat Neck V ",
    "price": 9.85,
    "description":
        "95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg",
    "rating": {"rate": 4.7, "count": 130}
  },
  {
    "id": 19,
    "name": "Opna Women's Short Sleeve Moisture",
    "price": 7.95,
    "description":
        "100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg",
    "rating": {"rate": 4.5, "count": 146}
  },
  {
    "id": 20,
    "name": "DANVOUY Womens T Shirt Casual Cotton Short",
    "price": 12.99,
    "description":
        "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
    "rating": {"rate": 3.6, "count": 145}
  }
];
