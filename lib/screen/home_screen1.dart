import 'package:flutter/material.dart';
import 'package:mozprop/components/components.dart';
import 'package:mozprop/config/palette.dart';
import 'package:mozprop/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.linearToSrgbGamma(),
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icon/icon3.png',
                      height: 50,
                    ),
                    Text(
                      'Moz Casa',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 150,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Palette.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _ButtonOption(name: 'Comprar'),
                        VerticalDivider(
                          color: Colors.white,
                          thickness: 2,
                          width: 20,
                        ),
                        _ButtonOption(name: 'Vender'),
                        VerticalDivider(
                          color: Colors.white,
                          thickness: 2,
                          width: 20,
                        ),
                        _ButtonOption(name: 'Arrendar'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                    // child: PropertyTypes(propertyTypes: propertyTypes),
                  ),
                ],
              ),
            ),
            // Rest of your body content goes here
          ],
        ),
      ),
    );
  }
}

class _ButtonOption extends StatelessWidget {
  final String name;

  const _ButtonOption({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: screenWidth * 0.039, // A
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
