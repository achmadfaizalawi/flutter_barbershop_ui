import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_barbershop_ui/home_page/barberman_widget/barberman_widget.dart';
import 'package:flutter_barbershop_ui/home_page/date_widget/date_widget.dart';
import 'package:flutter_barbershop_ui/home_page/service_widget/service_widget.dart';
import 'package:flutter_barbershop_ui/home_page/time_widget/time_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedDate = 19;

  void _selectDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }

  List serviceSelected = <String>[];
  void handleSelectedService(String name) {
    if (serviceSelected.contains(name)) {
      serviceSelected.remove(name);
    } else {
      serviceSelected.add(name);
    }
    setState(() {});
  }

  var selectedBarberman = "Mocha Barberman";
  void _selectBarber(String name) {
    setState(() {
      selectedBarberman = name;
    });
  }

  var selectedTime = "17.00";
  void _selectTime(String time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "BOOKING",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontFamily: "FiraSans"),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4,
                    )
                  ],
                  color: Colors.white,
                ),
              ),
              Positioned(
                  top: 20,
                  left: 15,
                  right: 15,
                  child: SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DateWidget(
                            date: 18,
                            day: "Tue",
                            tapHandler: _selectDate,
                            isSelected: selectedDate == 18),
                        const SizedBox(width: 25),
                        DateWidget(
                            date: 19,
                            day: "Wed",
                            tapHandler: _selectDate,
                            isSelected: selectedDate == 19),
                        const SizedBox(width: 25),
                        DateWidget(
                            date: 20,
                            day: "Thu",
                            tapHandler: _selectDate,
                            isSelected: selectedDate == 20),
                        const SizedBox(width: 25),
                        DateWidget(
                            date: 21,
                            day: "Fri",
                            tapHandler: _selectDate,
                            isSelected: selectedDate == 21),
                        const SizedBox(width: 25),
                        DateWidget(
                            date: 22,
                            day: "Sat",
                            tapHandler: _selectDate,
                            isSelected: selectedDate == 22),
                        const SizedBox(width: 25),
                        DateWidget(
                            date: 23,
                            day: "Sun",
                            tapHandler: _selectDate,
                            isSelected: selectedDate == 23),
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 35),
          Center(
            child: Text(
              "BARBERKING",
              style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 30,
                  color: Colors.black.withOpacity(0.6),
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              const SizedBox(width: 15),
              ServiceWidget(
                name: "Haircut",
                price: "40.000",
                tapHandler: handleSelectedService,
                isSelected: serviceSelected.contains("Haircut"),
              ),
              const SizedBox(width: 15),
              ServiceWidget(
                name: "Creambath",
                price: "30.000",
                tapHandler: handleSelectedService,
                isSelected: serviceSelected.contains("Creambath"),
              ),
              const SizedBox(width: 15),
              ServiceWidget(
                name: "Perming",
                price: "15.000",
                tapHandler: handleSelectedService,
                isSelected: serviceSelected.contains("Perming"),
              ),
              const SizedBox(width: 15),
              ServiceWidget(
                name: "Protein",
                price: "15.000",
                tapHandler: handleSelectedService,
                isSelected: serviceSelected.contains("Protein"),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 175,
            child: ListView(
              padding: const EdgeInsets.only(left: 15, right: 15),
              scrollDirection: Axis.horizontal,
              children: [
                BarbermanWidget(
                  imgPath: "assets/images/IMG_1.jpg",
                  name: "Mocha Barberman",
                  tapHandler: _selectBarber,
                  isSelected: selectedBarberman == "Mocha Barberman",
                ),
                const SizedBox(width: 15),
                BarbermanWidget(
                  imgPath: "assets/images/IMG_2.jpg",
                  name: "Blacky Barberman",
                  tapHandler: _selectBarber,
                  isSelected: selectedBarberman == "Blacky Barberman",
                ),
                const SizedBox(width: 15),
                BarbermanWidget(
                  imgPath: "assets/images/IMG_3.jpg",
                  name: "Chickie Barberman",
                  tapHandler: _selectBarber,
                  isSelected: selectedBarberman == "Chickie Barberman",
                ),
                const SizedBox(width: 15),
                BarbermanWidget(
                  imgPath: "assets/images/IMG_4.jpg",
                  name: "Uwa Barberman",
                  tapHandler: _selectBarber,
                  isSelected: selectedBarberman == "Uwa Barberman",
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            child: Wrap(
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                const SizedBox(width: 25),
                TimeWidget(
                  time: "11.00",
                  tapHandler: _selectTime,
                  isSelected: selectedTime == "11.00",
                ),
                const SizedBox(width: 25),
                TimeWidget(
                  time: "13.00",
                  tapHandler: _selectTime,
                  isSelected: selectedTime == "13.00",
                ),
                const SizedBox(width: 25),
                TimeWidget(
                  time: "15.00",
                  tapHandler: _selectTime,
                  isSelected: selectedTime == "15.00",
                ),
                const SizedBox(width: 25),
                TimeWidget(
                  time: "17.00",
                  tapHandler: _selectTime,
                  isSelected: selectedTime == "17.00",
                ),
                const SizedBox(width: 25),
                TimeWidget(
                  time: "19.00",
                  tapHandler: _selectTime,
                  isSelected: selectedTime == "19.00",
                ),
                const SizedBox(width: 25),
                TimeWidget(
                  time: "21.00",
                  tapHandler: _selectTime,
                  isSelected: selectedTime == "21.00",
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.black),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "BOOK VIA WHATSAPP",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontFamily: "FiraSans",
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
