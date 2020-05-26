
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Doctor{
  String id = UniqueKey().toString();
  String name;
  String description;
  String state;
  Color color;
  String avatar;

  Doctor.init();
  Doctor(this.name,this.description,this.avatar,this.state,this.color);
  Doctor getCurrentDoctor() {
    return Doctor("Dr.Alina james", "B.Sc DDVL Demilitologist",
                  "images/asset-1.png","Closed Today", Colors.red);
  }
}
class DoctorsList{
  List<Doctor> _doctorsList;
  DoctorsList(){
    this._doctorsList =[
      new Doctor("Dr.Alina james", "B.Sc DDVL Dermatologist 26 years of experience",
                "images/asset-1.png","Closed Today", Colors.red),
      new Doctor("Dr.Steve Robert", "B.Sc DDVL Demilitologist 26 years of experience",
                "images/asset-2.png","Open Today", Colors.green),
      new Doctor("Dr.Steve Robert", "B.Sc DDVL Demilitologist 26 years of experience",
                "images/asset-3.png","Open Today", Colors.green),
      new Doctor("Dr.Alina james", "B.Sc DDVL Demilitologist 26 years of experience",
                "images/asset-4.png","Closed Today", Colors.red),
      new Doctor("Dr.Frank karima", "B.Sc DDVL Demilitologist 26 years of experience",
                "images/asset-5.png","Closed Today", Colors.green),
      new Doctor("Dr.Nemeli Aaraf", "B.Sc DDVL Demilitologist 26 years of experience",
                "images/asset-6.png","Closed Today", Colors.green),
    ];
  }
  List<Doctor> get doctors => _doctorsList;
}