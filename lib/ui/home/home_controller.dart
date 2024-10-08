import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  TextEditingController searchController=TextEditingController();

  RxBool isPromptSaved=true.obs;

  // diet type logic
  Rx<int> selectedDietTypeIndex=(-1).obs;
  List<Map<String,String>> dietTypes = [
    {'title': 'Standard', 'option': 'Balanced diet'},
    {'title': 'Vegetarian', 'option': 'Plant-based diet'},
    {'title': 'Vegan', 'option': 'No animal products'},
    {'title': 'Keto', 'option': 'Low carb, high fat'},
  ];

  // calorie range logic
  Rx<int> selectedCalorieRangeIndex=(-1).obs;
  List<Map<String,String>> calorieRanges = [
    {'title': 'Low', 'option': 'Less than 1500 kcal/day'},
    {'title': 'Medium', 'option': '1500 - 2500 kcal/day'},
    {'title': 'High', 'option': 'More than 2500 kcal/day'},
  ];

  // protein level logic
  Rx<int> selectedProteinLevelIndex=(-1).obs;
  List<Map<String,String>> proteinLevels = [
    {'title': 'Low', 'option': 'Less than 50g/day'},
    {'title': 'Medium', 'option': '50-100g/day'},
    {'title': 'High', 'option': 'More than 100g/day'},
  ];

  // carb level logic
  Rx<int> selectedCarbLevelIndex=(-1).obs;
  List<Map<String,String>> carbLevels = [
    {'title': 'Low', 'option': 'Less than 50g/day'},
    {'title': 'Medium', 'option': '50-100g/day'},
    {'title': 'High', 'option': 'More than 100g/day'},
  ];

  // meal type logic
  Rx<int> selectedMealTypeIndex=(-1).obs;
  List<Map<String,String>> mealType = [
    {'title': 'Breakfast', 'option': 'Morning meal'},
    {'title': 'Lunch', 'option': 'Mid day meal'},
    {'title': 'Dinner', 'option': 'Night meal'},
  ];

  // preparation time logic
  Rx<int> selectedPreparationTimeIndex=(-1).obs;
  List<Map<String,String>> preparationTime = [
    {'title': 'Quick', 'option': 'For busy schedules or newbies'},
    {'title': 'Standard', 'option': 'More elaborated recipes'},
  ];

  // Allergens logic
  Rx<int> selectedAllergenIndex=(-1).obs;
  List<Map<String,String>> allergens = [
    {'title': 'Gluten', 'option': 'For celiac disease'},
    {'title': 'Dairy', 'option': 'For dairy allergies'},
    {'title': 'Nuts', 'option': 'For nuts allergies'},
    {'title': 'None', 'option': 'No allergies'},
  ];

  // cuisine type logic
  Rx<int> selectedCuisineTypeIndex=(-1).obs;
  List<Map<String,String>> cuisineTypes = [
    {'title': 'Italian', 'option': 'Pasta,Pizza,Mediterranean fla...'},
    {'title': 'Mexican', 'option': 'Tacos,enchiladas,bold spi...'},
    {'title': 'Asian', 'option': 'Stir fries,curries,diverse...'},
    {'title': 'Chinese', 'option': 'Burger,Sandwiches,comfort...'},
  ];

}