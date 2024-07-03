import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  TextEditingController firstName = TextEditingController();
  TextEditingController dateTime = TextEditingController();
  PageController pageController = PageController();

  void update() {
    notifyListeners();
    pageController.jumpToPage(1);
    print("done");
  }

  void back() {
    pageController.jumpToPage(0);
  }

  void setDate(DateTime? newSelectedDate){
    if(newSelectedDate!=null){
      dateTime.text="${newSelectedDate.day}";
    }
    else{
      dateTime.text="1-07-2024";
    }
    notifyListeners();
  }

  
}
