import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';

class DetailRecipesDummy {
  String title;
  String image; // Add this field
  List<TypeRecipes> typeRecipes;
  List<String> foodMaterial;
  List<String> makeFood;
  List<String> foodNutrition;
  String maker;
  bool isBook; // Add this field

  DetailRecipesDummy({
    required this.title,
    required this.image,
    required this.typeRecipes,
    required this.foodMaterial,
    required this.makeFood,
    required this.foodNutrition,
    required this.maker,
    required this.isBook, // Add this parameter
  });

  factory DetailRecipesDummy.fromJson(Map<String, dynamic> json) {
    List<dynamic> typeRecipesJson = json['typeRecipes'];
    List<TypeRecipes> typeRecipesList = typeRecipesJson
        .map((typeRecipe) => TypeRecipes.fromJson(typeRecipe))
        .toList();

    return DetailRecipesDummy(
      title: json['title'],
      image: json['image'],
      typeRecipes: typeRecipesList,
      foodMaterial: List<String>.from(json['foodMaterial']),
      makeFood: List<String>.from(json['makeFood']),
      foodNutrition: List<String>.from(json['foodNutrition']),
      maker: json['maker'],
      isBook: json['isBook'], // Add this line
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> typeRecipesJson =
        typeRecipes.map((typeRecipe) => typeRecipe.toJson()).toList();

    return {
      'title': title,
      'image': image,
      'typeRecipes': typeRecipesJson,
      'foodMaterial': foodMaterial,
      'makeFood': makeFood,
      'foodNutrition': foodNutrition,
      'maker': maker,
      'isBook': isBook, // Add this line
    };
  }
}

class TypeRecipes {
  String text;
  Color color;

  TypeRecipes({
    required this.text,
    required this.color,
  });

  factory TypeRecipes.fromJson(Map<String, dynamic> json) {
    return TypeRecipes(
      text: json['text'],
      color: Color(json['color']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'color': color.value,
    };
  }
}

List<DetailRecipesDummy> favoritRecepies = [];

List<DetailRecipesDummy> dummyDataReicpes = [
  DetailRecipesDummy(
    isBook: false,
    image:
        'https://images.unsplash.com/photo-1555078604-b2379f0e964a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80',
    title: 'Bubur Ayam Sehat Dan Lezat',
    typeRecipes: <TypeRecipes>[
      TypeRecipes(text: 'Makan Malam', color: orangeColor),
      TypeRecipes(text: 'Trisemester 1', color: lightVioletColor),
      TypeRecipes(text: '10 - 20 Menit', color: greenColor),
      TypeRecipes(text: 'Sayuran', color: yellowColor),
    ],
    foodMaterial: <String>[
      '4 sdm beras, cuci bersih',
      '1 sdm bawang bombai cincang',
      '30 gram brokoli, cuci, potong kecil-kecil',
      '40 gram ayam cincang',
      '400 ml air',
    ],
    makeFood: <String>[
      '1. Masukkan semua bahan yang telah dicuci dengan bersih',
      '2. Aduk semua bahan selama 15 menit',
      '3. Bubur ayam siap untuk disajikan',
    ],
    foodNutrition: <String>[
      'Energi: 200 kkal ',
      'Protein: 1 gram',
      'Lemak: 1,6 gram'
    ],
    maker: 'Puskesmas Lumut',
  ),
  DetailRecipesDummy(
    isBook: false,
    image:
        'https://images.unsplash.com/photo-1626082929543-5bab0f090c42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    title: 'Fried Chicken',
    typeRecipes: <TypeRecipes>[
      TypeRecipes(text: 'Makan Malam', color: orangeColor),
      TypeRecipes(text: 'Trisemester 1', color: lightVioletColor),
      TypeRecipes(text: '10 - 20 Menit', color: greenColor),
      TypeRecipes(text: 'Daging Ayam', color: orangeColor),
    ],
    foodMaterial: <String>[
      '4 sdm beras, cuci bersih',
      '1 sdm bawang bombai cincang',
      '30 gram brokoli, cuci, potong kecil-kecil',
      '40 gram ayam cincang',
      '400 ml air',
    ],
    makeFood: <String>[
      '1. Masukkan semua bahan yang telah dicuci dengan bersih',
      '2. Aduk semua bahan selama 15 menit',
      '3. Bubur ayam siap untuk disajikan',
    ],
    foodNutrition: <String>[
      'Energi: 200 kkal ',
      'Protein: 1 gram',
      'Lemak: 1,6 gram'
    ],
    maker: 'Puskesmas Lumut',
  ),
  DetailRecipesDummy(
    isBook: false,
    image:
        'https://images.unsplash.com/photo-1626497862618-4aa68df390fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=725&q=80',
    title: 'Ikan Goreng',
    typeRecipes: <TypeRecipes>[
      TypeRecipes(text: 'Makan Malam', color: orangeColor),
      TypeRecipes(text: 'Trisemester 1', color: lightVioletColor),
      TypeRecipes(text: '10 - 20 Menit', color: greenColor),
      TypeRecipes(text: 'Sayuran', color: orangeColor),
    ],
    foodMaterial: <String>[
      '4 sdm beras, cuci bersih',
      '1 sdm bawang bombai cincang',
      '30 gram brokoli, cuci, potong kecil-kecil',
      '40 gram ayam cincang',
      '400 ml air',
    ],
    makeFood: <String>[
      '1. Masukkan semua bahan yang telah dicuci dengan bersih',
      '2. Aduk semua bahan selama 15 menit',
      '3. Bubur ayam siap untuk disajikan',
    ],
    foodNutrition: <String>[
      'Energi: 200 kkal ',
      'Protein: 1 gram',
      'Lemak: 1,6 gram'
    ],
    maker: 'Puskesmas Lumut',
  ),
  DetailRecipesDummy(
    isBook: false,
    image:
        'https://images.unsplash.com/photo-1572656631137-7935297eff55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    title: 'Soto Banjar',
    typeRecipes: <TypeRecipes>[
      TypeRecipes(text: 'Makan Malam', color: orangeColor),
      TypeRecipes(text: 'Trisemester 1', color: lightVioletColor),
      TypeRecipes(text: '10 - 20 Menit', color: greenColor),
      TypeRecipes(text: 'Sayuran', color: orangeColor),
    ],
    foodMaterial: <String>[
      '4 sdm beras, cuci bersih',
      '1 sdm bawang bombai cincang',
      '30 gram brokoli, cuci, potong kecil-kecil',
      '40 gram ayam cincang',
      '400 ml air',
    ],
    makeFood: <String>[
      '1. Masukkan semua bahan yang telah dicuci dengan bersih',
      '2. Aduk semua bahan selama 15 menit',
      '3. Bubur ayam siap untuk disajikan',
    ],
    foodNutrition: <String>[
      'Energi: 200 kkal ',
      'Protein: 1 gram',
      'Lemak: 1,6 gram'
    ],
    maker: 'Puskesmas Lumut',
  ),
  DetailRecipesDummy(
    isBook: false,
    image:
        'https://images.unsplash.com/photo-1609847381390-2d71ed074efc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1031&q=80',
    title: 'Sayur Buncis',
    typeRecipes: <TypeRecipes>[
      TypeRecipes(text: 'Makan Malam', color: orangeColor),
      TypeRecipes(text: 'Trisemester 1', color: lightVioletColor),
      TypeRecipes(text: '10 - 20 Menit', color: greenColor),
      TypeRecipes(text: 'Sayuran', color: orangeColor),
    ],
    foodMaterial: <String>[
      '4 sdm beras, cuci bersih',
      '1 sdm bawang bombai cincang',
      '30 gram brokoli, cuci, potong kecil-kecil',
      '40 gram ayam cincang',
      '400 ml air',
    ],
    makeFood: <String>[
      '1. Masukkan semua bahan yang telah dicuci dengan bersih',
      '2. Aduk semua bahan selama 15 menit',
      '3. Bubur ayam siap untuk disajikan',
    ],
    foodNutrition: <String>[
      'Energi: 200 kkal ',
      'Protein: 1 gram',
      'Lemak: 1,6 gram'
    ],
    maker: 'Puskesmas Lumut',
  ),
  DetailRecipesDummy(
    isBook: false,
    image:
        'https://images.unsplash.com/photo-1613653739328-e86ebd77c9c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
    title: 'Sambal Gajah',
    typeRecipes: <TypeRecipes>[
      TypeRecipes(text: 'Makan Malam', color: orangeColor),
      TypeRecipes(text: 'Trisemester 1', color: lightVioletColor),
      TypeRecipes(text: '10 - 20 Menit', color: greenColor),
      TypeRecipes(text: 'Sayuran', color: orangeColor),
    ],
    foodMaterial: <String>[
      '4 sdm beras, cuci bersih',
      '1 sdm bawang bombai cincang',
      '30 gram brokoli, cuci, potong kecil-kecil',
      '40 gram ayam cincang',
      '400 ml air',
    ],
    makeFood: <String>[
      '1. Masukkan semua bahan yang telah dicuci dengan bersih',
      '2. Aduk semua bahan selama 15 menit',
      '3. Bubur ayam siap untuk disajikan',
    ],
    foodNutrition: <String>[
      'Energi: 200 kkal ',
      'Protein: 1 gram',
      'Lemak: 1,6 gram'
    ],
    maker: 'Puskesmas Lumut',
  ),
];
