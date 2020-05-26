import 'package:flutter/material.dart';
import 'package:medGo/pages/appointment.dart';
import 'package:medGo/pages/book-test-online1.dart';
import 'package:medGo/pages/book-test-online2.dart';
import 'package:medGo/pages/book-test-online3.dart';
import 'package:medGo/pages/book-test-online4.dart';
import 'package:medGo/pages/doctor-book-1.dart';
import 'package:medGo/pages/doctor-book-2.dart';
import 'package:medGo/pages/health.dart';
import 'package:medGo/pages/medicinefirst.dart';
import 'package:medGo/pages/my-doctors.dart';
import 'package:medGo/pages/offers.dart';
import 'package:medGo/pages/Welcome.dart';
import 'package:medGo/pages/chat.dart';
import 'package:medGo/pages/createAccount.dart';
import 'package:medGo/pages/docotr_acount.dart';
import 'package:medGo/pages/doctors.dart';
import 'package:medGo/pages/phoneNumber_login.dart';
import 'package:medGo/pages/signup.dart';
import 'package:medGo/pages/tabs.dart';
import 'package:medGo/pages/verification_number.dart';
import 'models/medicine.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch(settings.name){
      case '/' :
        return MaterialPageRoute(builder: (_) => SignUp());      
      case '/signup' :
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/phone':
        return MaterialPageRoute(builder: (_) => PhoneLogin());
      case '/verification':
        return MaterialPageRoute(builder: (_) => VerificationNumber(data: args));
      case '/createAcount':
        return MaterialPageRoute(builder: (_) => CreateAcount());  
      case '/home':
        return MaterialPageRoute(builder: (_) => TabsWidget(acountInfos: args,));
      case '/chat' :
        return MaterialPageRoute(builder: (_) => ChatWidget());
      case '/doctors':
        return MaterialPageRoute(builder: (_) => DoctorsList());  
      case '/doctorProfil':
        return MaterialPageRoute(builder: (_) => DoctorAcount());
      case '/firstDoctorBook':
        return MaterialPageRoute(builder: (_) => DoctorBookFirstStep());
      case '/secondeDoctorBook':
        return MaterialPageRoute(builder: (_) => DoctorBookSecondeStep());
      case '/offers':
        return MaterialPageRoute(builder: (_) => OffersList());
      case '/bookTest':
        return MaterialPageRoute(builder: (_) => BookTestsOnline());
      case '/secondeBookTest':
        return MaterialPageRoute(builder: (_) => BookTestsOnlineSecondeStep());
      case '/thirdBookTest':
        return MaterialPageRoute(builder: (_) => BookTestsOnlineThirdStep());
      case "/fourthBookTest":
        return MaterialPageRoute(builder: (_) => BookTestsOnlineFourthStep());
      case '/medicine':
        return MaterialPageRoute(builder: (_) => MedicineSelected());
      case '/mydoctors':
        return MaterialPageRoute(builder: (_) => MyDoctorsList());
      case '/appointment':
        return MaterialPageRoute(builder: (_) => AppointmentsList());
      case '/health':
        return MaterialPageRoute(builder: (_) => HealthTips());



      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }
    static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}