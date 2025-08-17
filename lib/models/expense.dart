class ExpenseModel {
  final String title;
  final DateTime date;
  final double amount;
  final String category;
  const ExpenseModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.category,
  });
}

Map<String, String> categories = {
  "food": "assets/images/categories/food.png",
  "uber": "assets/images/categories/food.png",
  "pets": "assets/images/categories/pet.png",
};
