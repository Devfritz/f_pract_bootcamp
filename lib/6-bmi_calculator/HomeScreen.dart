import 'package:f_pract_bootcamp/6-bmi_calculator/resultscreen.dart';
import 'package:f_pract_bootcamp/6-bmi_calculator/widget/cardComponent.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

enum Gender { Male, Female }

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 180;
  int age = 15;
  Gender? selectGenre;
  int weight = 60;

  void handleIncrement() {
    setState(() {
      weight++;
      print(weight);
    });
  }

  void handleIncrease() {
    setState(() {
      age++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CardComponent(
                  onPress: () {
                    setState(() {
                      selectGenre = Gender.Male;
                    });
                  },
                  color: selectGenre == Gender.Male ? kActiveColor : kColor,
                  cardChild: ItemCard(
                    title: 'Male',
                    icon: Icon(Icons.male, size: 70, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: CardComponent(
                  onPress: () {
                    setState(() {
                      selectGenre = Gender.Female;
                    });
                  },
                  color: selectGenre == Gender.Female ? kActiveColor : kColor,
                  cardChild: ItemCard(
                      icon: Icon(Icons.female, size: 70, color: Colors.white),
                      title: 'Female'),
                ),
              )
            ],
          )),
          Expanded(
              child: CardComponent(
            color: kColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'CM',
                      style: kTextLabel,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  ),
                  child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 250,
                      inactiveColor: Colors.grey,
                      activeColor: kActiveColor,
                      thumbColor: kActiveColor,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardComponent(
                  color: kColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                          )),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icons.add,
                            onPress: handleIncrement,
                          ),
                          IconButton(
                            icon: Icons.minimize,
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: CardComponent(
                  color: kColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                          )),
                      Text(
                        age.toString(),
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icons.add,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icons.minimize,
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultBmi()));
            },
            child: Container(
              padding: EdgeInsets.only(top: 30.0),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: kActiveColor,
              ),
              child: Text(
                'Calculate your BMI',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  int incrWeight = 0;
  VoidCallback? onPress;

  final IconData icon;
  IconButton({required this.icon, this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kActiveColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Icon icon;
  final String title;

  const ItemCard({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [icon, SizedBox(height: 10.0), Text(title, style: kTextLabel)],
    );
  }
}
