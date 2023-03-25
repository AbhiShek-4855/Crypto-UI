import 'package:get/get.dart';

class BlogScreenController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    onChangeIndex;
  }

  RxInt selectedIndex =  0.obs;


  onChangeIndex(int index){
    selectedIndex.value =  index;
    update();
  }

}