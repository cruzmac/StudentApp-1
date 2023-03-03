class ExamSeating {
  String? subCode;
  String? examType;
  String? examName;
  String? examDate;
  String? examTime;
  String? examHallno;
  String? examDay;
  String? description;
  ExamSeating({
    this.subCode,
    this.examType,
    this.examName,
    this.examDate,
    this.examTime,
    this.examHallno,
    this.examDay,
    this.description,
  });

  ExamSeating.fromJson(Map<String, dynamic> json) {
    subCode = json['subCode'];
    examType = json['examType'];
    examName = json['examName'];
    examDate = json['examDate'];
    examTime = json['examTime'];
    examHallno = json['examHallno'];
    examDay = json['examDay'];
    description = json['description'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['subCode'] = subCode;
    data['examType'] = examType;
    data['examName'] = examName;
    data['examDate'] = examDate;
    data['examTime'] = examTime;
    data['examHallno'] = examHallno;
    data['examDay'] = examDay;
    data['description'] = description;
    return data;
  }
}
