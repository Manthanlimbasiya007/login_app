import 'package:shared_preferences/shared_preferences.dart';

class Shr
{
  void createShr(String email,String password,bool isLogin)
  async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("e1", email);
    shr.setString("p1", password);
    shr.setBool("isLogin", isLogin);
  }

  Future<Map> readShr()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    String? email = shr.getString("e1");
    String? password = shr.getString("p1");
    bool? isLogin = shr.getBool("isLogin");

    Map m1 = {"e1": email, "p1": password,"isLogin":isLogin};
    return m1;
  }

  void clearShr()
  async{
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.clear();
  }

}