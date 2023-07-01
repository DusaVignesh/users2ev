import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s2ev_user/constants/constants.dart';
import 'package:s2ev_user/data/services.dart';
import '../controller/controller.dart';
import '../custom/secondary-appbar.dart';

class AddCycle extends StatefulWidget {
  const AddCycle({super.key});
  State<AddCycle> createState() => AddCycleState();
}

class AddCycleState extends State<AddCycle> {
  List<Map<String, String>> foundUsers = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void runFilter(String value) {
      if (value.isEmpty) {
        foundUsers = [];
      } else {
        foundUsers = allusers
            .where((element) =>
                element['title']!.toLowerCase().contains(value.toLowerCase()))
            .toList();
      }
      setState(() {
        foundUsers;
      });
    }

    Controller controller = Get.find();

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomSecondaryAppbar(size: size, title: 'Add Cycle').appbar(),
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height(size, 5),
              ),
              Text(
                'Select Model',
                style: primaryTextStyle18,
              ),
              SizedBox(
                height: height(size, 10),
              ),
              TextFormField(
                controller: controller.textController,
                onChanged: (value) => runFilter(value),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: width(size, 24),
                        vertical: height(size, 14)),
                    hintStyle: TextStyle(
                        color: appbarSecondaryTextColor,
                        fontWeight: FontWeight.w300),
                    hintText: 'Search by E-Cycle Model or Brand',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: appbarSecondaryTextColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
              SizedBox(
                height: height(size, 16),
              ),
              Material(
                elevation: 2,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.25),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 650),
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: foundUsers.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              ListTile(
                                  onTap: () =>
                                      Get.toNamed(foundUsers[index]['route']!),
                                  tileColor: Colors.white,
                                  title: Text(foundUsers[index]['title']!)),
                              SizedBox(
                                height: 3,
                              )
                            ],
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
