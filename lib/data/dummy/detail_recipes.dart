import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';

class DetailRecipesDummy {
  String title;
  List<TypeRecipes> typeRecipes;
  List<String> foodMaterial;
  List<String> makeFood;
  List<String> foodNutrition;
  String maker;
  DetailRecipesDummy({
    required this.title,
    required this.typeRecipes,
    required this.foodMaterial,
    required this.makeFood,
    required this.foodNutrition,
    required this.maker,
  });
}

class TypeRecipes {
  String text;
  Color color;
  TypeRecipes({
    required this.text,
    required this.color,
  });
}

DetailRecipesDummy dataBoonganResep = DetailRecipesDummy(
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
);
