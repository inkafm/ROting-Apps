class Global {
  static int primaryColor = 0xFF027BA7;
  static var name = '';
  static var evaluation_number = 1;
  static var evaluation_point = 0;
  static bool point1 = false;

  static setName(value) async {
    name = await value;
  }

  static setEvaluationNumber(value) async {
    evaluation_number = await value;
  }

  static setEvaluationPoint() async {
    evaluation_point = await evaluation_point + 1;
  }

  static resetEvaluationPoint() async {
    evaluation_point = 0;
  }

  static changePoint1() {
    point1 = !point1;
  }
}
