import 'package:flutter/widgets.dart';

class Medicine{
  String id =UniqueKey().toString();
  String name;
  String price;
  Medicine.init();
  Medicine(this.name,this.price);

}
class MedicineList{
  List<Medicine> medicineMist;
  medicineList(){
    this.medicineMist=[
      new Medicine("Paracetamol", "20\$"),
      new Medicine("Amlor", "45\$"),
      new Medicine("Tahor", "55\$"),
      new Medicine("Rumafed", "22\$"),
      new Medicine("Paracetamol", "20\$"),
      new Medicine("Amlor", "45\$"),

  ];

  }
  List<Medicine> get medicine => medicineMist;
}