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
  "food": "assets/images/categories/food.jpg",
  "uber": "assets/images/categories/bus.png",
  "pets": "assets/images/categories/pet.png",
  "education": "assets/images/categories/education.png",
  "cinema": "assets/images/categories/cinema.png",
};
