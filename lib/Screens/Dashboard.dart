import 'package:flutter/material.dart';
import 'package:test1/modal/modal.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<int> numbers = [1, 2, 3, 4, 5];
  List<Destinations> _companies = Destinations.getDestinatioins();
  List<DropdownMenuItem<Destinations>> _dropdownMenuItems;
  Destinations _selectedDestination;
  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedDestination = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Destinations>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Destinations>> items = List();
    for (Destinations company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Destinations selectedCompany) {
    setState(() {
      _selectedDestination = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Text('${_selectedDestination.name}'),
            //Text("Goa,GA"),
            DropdownButton(
              value: _selectedDestination,
              items: _dropdownMenuItems,
              onChanged: onChangeDropdownItem,
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 3.989,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("JIJI ASSIST"),
                SizedBox(
                  height: 20, //future apply sor mediaquery
                ),
                Row(
                  children: <Widget>[
                    buttonContainer("How to buy"),
                    SizedBox(
                      width: 21, //future apply sor mediaquery
                    ),
                    buttonContainer("Hot Deals")
                  ],
                ),
                SizedBox(
                  height: 15, //future apply sor mediaquery
                ),
                Row(
                  children: <Widget>[
                    buttonContainer("How to Sell"),
                    SizedBox(
                      width: 21, //future apply sor mediaquery
                    ),
                    buttonContainer("Games")
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 2.8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Categories"),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.8,
                    ),
                    Text(
                      "View All>>",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                SizedBox(
                  height: 20, //future apply sor mediaquery
                ),
                categoriesContainer()
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("POPULAR PRODUCTS"),
        )
      ],
    ));
  }

  Widget buttonContainer(String text) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
//we will replace this image with the output we got from  Api
  Widget categoriesContainer() {
    return Container(
      //color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      height: MediaQuery.of(context).size.height / 4.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width / 2.4,
              child: Card(
                color: Colors.white,
                child: Container(child: Image.asset("Assets/Category.png")),
              ),
            );
          }),
    );
  }
}
