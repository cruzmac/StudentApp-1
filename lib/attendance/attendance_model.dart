class Attendance {
  int? id;
  int? noofabsentdays;
  int? workingdays;
  int? workingdaystillnow;
  int? attendancepercent;

  Attendance({
    this.id,
    this.noofabsentdays,
    this.workingdays,
    this.workingdaystillnow,
    this.attendancepercent,
  });

  Attendance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    noofabsentdays = json['noofabsentdays'];
    workingdays = json['workingdays'];
    workingdaystillnow = json['workingdaystillnow'];
    attendancepercent = json['attendancepercent'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['noofabsentdays'] = noofabsentdays;
    data['workingdays'] = workingdays;
    data['workingdaystillnow'] = workingdaystillnow;
    data['attendancepercent'] = attendancepercent;
    return data;
  }
}

class Attendance2 {
  int? id;
  List? absentdays;
  Attendance2({
    this.id,
    this.absentdays,
  });
  Attendance2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    absentdays = json['absentdays'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['absentdays'] = absentdays;
    return data;
  }
}
