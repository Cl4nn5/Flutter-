class WorkType {
  final List<String> workCycle = ["주", "주", "휴", "야", "야", "비", "휴", "휴"];
  DateTime joinDate = DateTime(2022, 11, 28);
  DateTime startDate = DateTime(2022, 11, 30);
  DateTime? nowDate;
  int get diffDay => nowDate!.difference(startDate).inDays;
  int get diffJoinDff => nowDate!.difference(joinDate).inDays;

  WorkType({required this.nowDate});

  String getWorkType(nowDate) {
    return workCycle[diffDay % workCycle.length];
  }

  String resultString() {
    String today = nowDate.toString().substring(0, 10);
    String joinDate = this.joinDate.toString().substring(0, 10);
    String startDate = this.startDate.toString().substring(0, 10);

    String _crlf = "\n";
    String res1 = "입사일은 $joinDate입니다";
    String res2 = "사이클 시작일은 $startDate입니다";
    String res3 = "검색 날짜는 $today입니다";
    String res4 = "근무형태는 \"${getWorkType(nowDate)}\"입니다.";
    String res5 = "근속일자는 ${diffJoinDff + 1}일차입니다.";

    return res1 +
        _crlf +
        res2 +
        _crlf +
        _crlf +
        res3 +
        _crlf +
        res4 +
        _crlf +
        res5;
  }
}

// void main(List<String> args) {
//   DateTime today = DateTime.now();
//   final WorkType workType = WorkType(nowDate: DateTime.now());
//   print(workType.resultString(today));
// }
