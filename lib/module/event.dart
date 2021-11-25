class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2,
      date;

  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.duration,
      required this.punchLine1,
      required this.punchLine2,
      required this.date,
      required this.categoryIds,
      required this.galleryImages});
}

final conferences1 = Event(
  imagePath: "images/thinking.jpg",
  title: "مؤتمر تعليم التفكير                              ",
  description: " ",
  location: "عن بعد",
  duration: "3 ساعات",
  punchLine1:
      "يسعى المؤتمر لمناقشة القضايا ذات الصلة بشكل مباشر بتعليم التفكير في إطار التربية والتعليم!",
  punchLine2:
      "كما ستتناول الجلسات العلمية للمؤتمر دراسات وأبحاث تتعلق بالممارسات التدريسية ",
  date: '24 Dec',
  categoryIds: [0, 1],
  galleryImages: [],
);
final conferences2 = Event(
  imagePath: "images/quality.jpg",
  title: "مؤتمر جودة وقياس الأداء التعليمي",
  description: "3 ساعات",
  location: "عن بعد",
  duration: "",
  punchLine1: "",
  punchLine2: "",
  date: '21 Dec',
  categoryIds: [0, 1],
  galleryImages: [],
);

final course1 = Event(
  imagePath: "images/innovation.jpg",
  title: "الابتكار والذكاء الاصطناعي في التعليم",
  description: "",
  location: "عن بعد",
  duration: "3 ساعات",
  punchLine1: "",
  punchLine2: "",
  date: '20 Dec',
  categoryIds: [0, 2],
  galleryImages: [],
);
final research1 = Event(
  imagePath: "images/Social.jpg",
  title: "الدراسات الإجتماعية                            ",
  description: "",
  location: "عن بعد",
  duration: "",
  punchLine1: "",
  punchLine2: "",
  date: '30 Dec',
  categoryIds: [0, 3],
  galleryImages: [],
);
final workshops1 = Event(
  imagePath: "images/Workshop.jpg",
  title: "ورشة عمل  تأهيل ورعاية التربية الخاصة",
  description: "4 ساعات",
  location: "عن بعد",
  duration: "",
  punchLine1: "",
  punchLine2: "",
  date: '13 Dec',
  categoryIds: [0, 4],
  galleryImages: [],
);

final events = [
  conferences1,
  conferences2,
  course1,
  workshops1,
  research1,
];
