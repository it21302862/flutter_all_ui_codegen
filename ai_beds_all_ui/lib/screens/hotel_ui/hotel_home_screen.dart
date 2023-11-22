import 'package:ai_beds_all_ui/screens/hotel_ui/hotel_list_model.dart';
import 'package:ai_beds_all_ui/screens/hotel_ui/hotel_theme.dart';
import 'package:ai_beds_all_ui/screens/hotel_ui/hotel_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HotelHomeScreen extends StatefulWidget {
  const HotelHomeScreen({Key? key}) : super(key: key);

  @override
  State<HotelHomeScreen> createState() => _HotelHomeScreenState();
}

class _HotelHomeScreenState extends State<HotelHomeScreen>
    with TickerProviderStateMixin {
  List<HotelListData> hotelList = HotelListData.hotelList;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
      initialDateRange: DateTimeRange(start: startDate, end: endDate),
    );

    if (picked != null) {
      setState(() {
        startDate = picked.start;
        endDate = picked.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          getAppBarUI(),
          Expanded(
              child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Column(
                      children: <Widget>[getMyHotelTextUI(), getTimeDateUI()],
                    );
                  },
                      childCount:
                          1), // Set the childCount to the number of children you have in the Column
                ),
              ];
            },
            body: const HotelListWidget(),
          ))
        ],
      ),
    );
  }

  getMyHotelTextUI() {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
          bottom: screenHeight * 0.016,
          top: screenHeight * 0.04,
          left: screenHeight * 0.04),
      child: Align(
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: 0.8, // Adjust this factor as needed
          child: Text(
            "My Hotels",
            style: TextStyle(
              fontSize: screenHeight * 0.026,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Container(
        decoration: BoxDecoration(
            color: HotelTheme.buildLightTheme().backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0, 2),
                blurRadius: 8.0,
              )
            ]),
        child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
//           left: 8,
//           right: 8
            ),
            child: Row(children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: AppBar().preferredSize.height + 40,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ),
              const Expanded(
                  child: Center(
                child: Text(
                  "Hotels",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              )),
              Container(
                  width: AppBar().preferredSize.height + 40,
                  height: AppBar().preferredSize.height,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                  ))
            ])));
  }

  getTimeDateUI() {
    return Padding(
      // padding: const EdgeInsets.only(left: 18, bottom: 16),
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.02,
          bottom: MediaQuery.of(context).size.height * 0.016),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      _selectDateRange(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(height: 8),
                          const Icon(
                            Icons.calendar_today,
                            color: Color.fromARGB(255, 6, 7, 8),
                            size: 20,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "${DateFormat('dd MMM').format(startDate)} to ${DateFormat('dd MMM , yyyy').format(endDate)}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          )),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(right: 6), // Add margin to the icon
                  child: Icon(
                    Icons.filter_list,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8), // Add margin to the text
                  child: Text(
                    'Hotels',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HotelListWidget extends StatelessWidget {
  const HotelListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: HotelListData.hotelList.length,
        padding: const EdgeInsets.only(top: 8),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final hotel = HotelListData.hotelList[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  // Image.asset(
                  //   hotel.imagePath,
                  //   width: double.infinity,
                  //   height: 150,
                  //   fit: BoxFit.cover,
                  // ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new page when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HotelView(),
                        ),
                      );
                    },
                    child: Image.asset(
                      hotel.imagePath,
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const Positioned(
                    top: 12,
                    right: 12,
                    child: Icon(Icons.more_vert), // Three dots icon
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(58, 165, 61, 1),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text(
                        hotel.roomSold,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    // color: Colors.black.withOpacity(0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hotel.subTxt,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            height: 1.5,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              hotel.titleTxt,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              hotel.salary, // Align to the right
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // Add other details as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
