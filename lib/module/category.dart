import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "الكل",
  icon: Icons.search,
);

final musicCategory = Category(
  categoryId: 1,
  name: " المؤتمرات",
  icon: Icons.group,
);

final meetUpCategory = Category(
  categoryId: 2,
  name: "الدورات",
  icon: Icons.school,
);

final golfCategory = Category(
  categoryId: 3,
  name: "الأبحاث",
  icon: Icons.insert_drive_file,
);

final birthdayCategory = Category(
  categoryId: 4,
  name: "ورش عمل",
  icon: Icons.forum,
);

final categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  birthdayCategory,
];
