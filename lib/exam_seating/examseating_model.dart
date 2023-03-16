class ExamSeating {
  int? studId;
  String? subCode;
  String? examType;
  String? examName;
  String? examDate;
  String? examTime;
  String? examHallno;
  String? examDay;
  String? blockName;
  String? floorNo;
  bool? isExamToday;
  ExamSeating({
    this.studId,
    this.subCode,
    this.examType,
    this.examName,
    this.examDate,
    this.examTime,
    this.examHallno,
    this.examDay,
    this.blockName,
    this.floorNo,
    this.isExamToday,
  });

  ExamSeating.fromJson(Map<String, dynamic> json) {
    studId = json['stud_id'];
    subCode = json['subject_code'];
    examType = json['exam_type'];
    examName = json['exam_name'];
    examDate = json['exam_date'];
    examTime = json['timing'];
    examHallno = json['hall_no'];
    blockName = json['block_name'];
    floorNo = json['floor_no'];
    examDay = json['day'];
    isExamToday = json['is_exam_today'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['stud_id'] = studId;
    data['subject_code'] = subCode;
    data['exam_type'] = examType;
    data['exam_name'] = examName;
    data['exam_date'] = examDate;
    data['timing'] = examTime;
    data['hall_no'] = examHallno;
    data['block_name'] = blockName;
    data['floor_no'] = floorNo;
    data['day'] = examDay;
    data['is_exam_today'] = isExamToday;
    return data;
  }
}
