enum Weeks { mon, tue, wed, thu, fri, sat, sun }

Weeks getWeek(int day) {
  switch (day) {
    case 1:
      return Weeks.mon;
    default:
      throw ArgumentError("Invalid day: $day");
  }
}

void getWorkingDay(Weeks Function(int day) week) {
  Weeks currentDay = week(1);

  if (currentDay == Weeks.sat || currentDay == Weeks.sun) {
    print("Today is a non-working day.");
  } else {
    print("Today is a working day.");
  }
}

void main() {
  getWorkingDay(getWeek);
}

