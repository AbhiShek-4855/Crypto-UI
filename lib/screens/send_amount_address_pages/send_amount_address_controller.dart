import 'package:get/get.dart';

class  SendAmountAddressController  extends GetxController{
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    onChangeIndex;
  }

  onChangeIndex (int  index){
    selectedIndex.value = index;
    update();
  }

}