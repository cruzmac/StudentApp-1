class Attendance {
  int? noOfAbsentDays;
  int? workingDays;
  int? workingDaysTillNow;
  int? attendancePercent;

  Attendance({
    this.noOfAbsentDays,
    this.workingDays,
    this.workingDaysTillNow,
    this.attendancePercent,
  });

  Attendance.fromJson(Map<String, dynamic> json) {
    noOfAbsentDays = json["absent_days"];
    workingDays = json["total_working_days"];
    workingDaysTillNow = json["working_days_till_now"];
    attendancePercent = json["attendance_percentage"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['absent_days'] = noOfAbsentDays;
    data['total_working_days'] = workingDays;
    data['working_days_till_now'] = workingDaysTillNow;
    data['attendance_percentage'] = attendancePercent;
    return data;
  }
}

class Attendance2 {
  String? absentDate;
  String? session;

  Attendance2({this.absentDate, this.session});
  Attendance2.fromJson(Map<String, dynamic> json) {
    absentDate = json['date'];
    session = json['absent_session'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['date'] = absentDate;
    data['absent_session'] = session;
    return data;
  }
}
