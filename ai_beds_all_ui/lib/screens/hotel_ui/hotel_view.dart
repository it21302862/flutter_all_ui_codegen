
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HotelView extends StatefulWidget {
  const HotelView({Key? key});

  @override
  _HotelViewState createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
          child: SizedBox(
            width: 90,
            height: 27,
            child: Image.asset('assets/images/logo_blue.png'),
          ),
        ),
        ),
        
        body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.only(top: 20.0),
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: [
                  _buildImage('assets/hotels/hotel_1.jpg'),
                  _buildImage('assets/hotels/hotel_2.jpg'),
                  _buildImage('assets/hotels/hotel_3.jpg'),
                  _buildImage('assets/hotels/hotel_4.jpg'),
                  _buildImage('assets/hotels/hotel_5.jpg'),
                ],
              ),
              DotsIndicator(
                dotsCount: 5,
                position: _currentIndex.toDouble().toInt(),
                decorator: DotsDecorator(
                  size: const Size.square(8.0),
                  activeSize: const Size(8.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),

              Container(
                  padding: const EdgeInsets.all(32.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text.rich(
                                  TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.location_on,
                                      size: 16.0,
                                      color: Colors.black,
                                    )),
                                    TextSpan(text: "Paris,France")
                                  ]),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.0),
                                ),
                                SizedBox(height: 5.0),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(text: "Hotel Atmospheres")
                                  ]),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.9,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestiasLorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.0),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  "Room Types",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.only(
                    bottom: 8, top: 0, left: 30, right: 30),
                width: 150,

                // child: const ListTile(
                //   leading: CircleAvatar(
                //     backgroundImage: AssetImage('assets/hotels/hotel_1.jpg'),
                //     radius: 25,
                //   ),
                //   title: Text('Standard'),
                //   subtitle: Text('Rooms : 4'),
                //   trailing: Text(
                //     '\$358', // Replace with the actual price
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 18,
                //     ),
                //   ),
                // ),

                child: ListView(
                  shrinkWrap: true,
                  children: [
                    buildListItem('Standard', 'Rooms: 4', '\$358.00',
                        'assets/hotels/hotel_1.jpg'),
                    const SizedBox(height: 5),
                    buildListItem('Deluxe', 'Rooms: 2', '\$500.00',
                        'assets/hotels/hotel_2.jpg'),
                    const SizedBox(height: 5),
                    buildListItem('Suite', 'Rooms: 1', '\$800.00',
                        'assets/hotels/hotel_3.jpg'),
                    const SizedBox(height: 5),
                    // Add more items as needed
                  ],
                ),
              ),

              Container(
                color: const Color(0xFF583EF7),
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 50,
                          child: RawKeyboardListener(
                            focusNode: FocusNode(),
                            onKey: (event) {},
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    maxLines: null,
                                    keyboardType: TextInputType.multiline,
                                    onChanged: (value) {},
                                    decoration: const InputDecoration(
                                      hintText: 'Type here...',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                    ),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                                IconButton(
                                  icon: Image.asset('assets/images/gallery.png'),
                                  onPressed: () {
                                    // Handle image attachment button press
                                  },
                                ),
                                IconButton(
                                  icon: Image.asset('assets/images/mic.png'),
                                  onPressed: () {
                                    // Handle image attachment button press
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String assetPath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }

  Widget buildListItem(
      String title, String subtitle, String price, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 25,
        ),
        focusColor: Colors.white,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(
          price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
