import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Temprory List of items
  List<String> categoryList = [
    "Restaurant",
    "Cafes",
    "Grocery",
    "Salon",
    "Bar"
  ];

  List<String> restaurantList = [
    "The Gateway",
    "KFC",
    "Dominos",
  ];

  List<String> restaurantMinSpend = [
    "25",
    "20",
    "15",
  ];
  List<String> restaurantDistance = [
    "0.3",
    "0.2",
    "0.5",
  ];
//

  TextEditingController? _controller;
  FocusNode? _focusNode;

//Icons
  static const IconData arrowDown =
      IconData(0xf13d, fontFamily: 'MaterialIcons');
  static const IconData telegram =
      IconData(0xf067a, fontFamily: 'MaterialIcons');
  static const IconData arrow_right_alt =
      IconData(0xe09f, fontFamily: 'MaterialIcons');

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              homeBar(),
              categories(),
              searchBar(),
              restaurantCard(),
              dropDownBar(),
              giftCard(),
              registerOutlets(),
              redeemOutlet()
            ]),
      ),
    );
  }

  Widget homeBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
      child: SizedBox(
        height: 50,
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                "rywards",
                style: TextStyle(
                  color: Colors.black,
                  // color:  Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 37,
                  fontStyle: FontStyle.normal,
                ),
              ),
            )),
      ),
    );
  }

  Widget categories() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) => itemCategory(index),
        ),
      ),
    );
  }

  Widget itemCategory(int index) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
              width: 90,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 2.0), //(x,y)
                          blurRadius: 4.0,
                        )
                      ]),
                ),
                Center(
                  child: Text(
                    categoryList[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBar() {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
        child: SizedBox(
          height: 50,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 0.5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Row(children: <Widget>[
              Flexible(
                child: TextFormField(
                  maxLines: 1,
                  scrollPadding: EdgeInsets.zero,
                  controller: _controller,
                  enabled: true,
                  autofocus: false,
                  focusNode: _focusNode,
                  style: const TextStyle(
                    color: Color(0xff142952),
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                  ),
                  cursorColor: const Color(0xff8DA0C2),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "restaurant,grocery,cafe,bar,salon..",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color(0xff687b9c),
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }

  Widget restaurantCard() {
    return SizedBox(
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: restaurantList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 2), //(x,y)
                                blurRadius: 7,
                                spreadRadius: 1)
                          ]),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              left: 15,
                            ),
                            child: Row(children: [
                              Text(
                                restaurantList[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              const Text(
                                " - Covent Garden",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ])),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 15, right: 5, bottom: 5),
                            child: Row(children: [
                              const Text(
                                "Minimum Spend - ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Text(
                                "€${restaurantMinSpend[index]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              const Icon(
                                telegram,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                "${restaurantDistance[index]} miles",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ])),
                        Spacer(),
                        Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width - 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              child: Image.asset(
                                "assets/restaurant.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ]),
                    )),
              );
            }),
      ),
    );
  }

  Widget dropDownBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: SizedBox(
        height: 40,
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
                child: Icon(
              arrowDown,
              size: 35,
              color: Color(0xFF8DA0C2),
            ))),
      ),
    );
  }

  Widget giftCard() {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 40, right: 40),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Convert your ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Text(
                  "rywards ",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Text(
                  "into ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Text(
                  "gift cards",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 18),
                ),
              ],
            ),
            Spacer(),
            Row(children: [
              Container(
                height: 55,
                width: (MediaQuery.of(context).size.width - 100) / 2,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 7,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: const Text(
                  "12 Points",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 17),
                ),
              ),
              Container(
                height: 55,
                width: (MediaQuery.of(context).size.width - 80) / 2,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 7,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Redeem Now",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }

  Widget registerOutlets() {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
        children: [
          Center(
            child: Row(children: [
              Column(children: [
                Text(
                  "Top Registered Outlets",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 22),
                ),
                Text(
                  "Earn from offline and online stores",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                      fontSize: 15),
                ),
              ]),
              Spacer(),
              Icon(
                arrow_right_alt,
                size: 50,
                color: Colors.black,
              )
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          outletGridView()
        ]);
  }

  Widget outletGridView() {
    double sideLength = (MediaQuery.of(context).size.width - 80) / 3;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 3,
          childAspectRatio: 0.75),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: sideLength,
            height: sideLength,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: sideLength * 0.7,
                    width: sideLength,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        "assets/restaurant.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                  height: sideLength * 0.3,
                  width: sideLength,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Restaurant",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 6,
    );
  }

  Widget redeemOutlet() {
    double sideWidth = (MediaQuery.of(context).size.width - 60) / 2;
    double sideHeight = sideWidth + (sideWidth * 0.3);

    return Column(children: [
      Center(
        child: Text(
          "Top Redeem Outlets",
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black45, fontSize: 22),
        ),
      ),
      Padding(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: sideWidth / sideHeight,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: sideWidth,
                    height: sideHeight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: sideHeight * 0.5,
                            width: sideWidth,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  blurRadius: 7,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                "assets/starbuck_logo.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        Container(
                            height: sideHeight * 0.3,
                            width: sideWidth,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(children: const [
                                Text(
                                  "StarBucks",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Coffee Shop",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54,
                                      fontSize: 15),
                                ),
                              ]),
                            )),
                        Row(children: [
                          Container(
                            height: sideHeight * 0.2,
                            width: sideWidth * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 7,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "€10",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            height: sideHeight * 0.2,
                            width: sideWidth * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 7,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "7 rywards points",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                          )
                        ])
                      ],
                    ),
                  ),
                );
              }))
    ]);
  }
}
