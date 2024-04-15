import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospitalapps/controllers/HomeController.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital App'),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.motionTabBarController,
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hello. username!"),
                    Icon(
                      Icons.notifications,
                      color: Colors.red[500],
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Consultation"),
                    Text("Medical Checkup"),
                    Text("Doctor Schedule"),
                    Text("Ambulance")
                  ],
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [DoctorList()],
                ),
                Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Advertisement"),
                    Image.asset(
                      'assets/ads1.png',
                      width: 500,
                      height: 250,
                    ),
                    Image.asset(
                      'assets/ads2.png',
                      width: 500,
                      height: 250,
                    ),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: Text("History"),
          ),
          Center(
            child: Text("MY APPOINTMENT"),
          ),
          Center(
            child: Text("PROFILE"),
          ),
        ],
      ),
      bottomNavigationBar: MotionTabBar(
        controller: controller.motionTabBarController,
        initialSelectedTab: "Home",
        labels: ["Home", "History", "MY APPOINTMENT", "PROFILE"],
        icons: [
          Icons.home,
          Icons.assignment_outlined,
          Icons.calendar_month_outlined,
          Icons.person_pin_rounded
        ],
        tabSize: 60,
        tabBarHeight: 55,
        textStyle: TextStyle(
          fontSize: 9,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: const Color.fromARGB(255, 19, 29, 37),
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.blue[900],
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          controller.changeTabIndex(value);
        },
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Container
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          width: 300,
          height: 150,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. John Doe',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Specialist: Pediatrician',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Rating: 4.8/5',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                StartConsultation()
              ],
            ),
          ],
        )
      ],
    );
  }
}

class StartConsultation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Tambahkan logika logout di sini
        print('Start Consultation');
      },
      child: Text('Start'),
    );
  }
}
