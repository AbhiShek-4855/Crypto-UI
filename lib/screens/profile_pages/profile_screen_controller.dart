import 'package:crypto_ui/utils/theme_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileScreenController  extends GetxController{
  RxBool theme =  false.obs;
  final box = GetStorage();


  @override
  void onInit() async {
    getTheme();
    super.onInit();
  }

  changeTheme(bool value) async {
    theme.value = value;
    ThemeServices().switchTheme();
    await box.write('theme', value);
    update();
  }

  getTheme() async {
    theme.value = await box.read('theme');
    update();
  }



}