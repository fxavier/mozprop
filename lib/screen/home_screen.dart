import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mozprop/components/components.dart';
import 'package:mozprop/components/property_type_card.dart';
import 'package:mozprop/config/palette.dart';
import 'package:mozprop/model/models.dart';
import 'package:mozprop/store/store.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final PropertyTypeStore propertyTypeStore = GetIt.I<PropertyTypeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'MozCasa',
          style: TextStyle(
            color: Colors.green,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Pesquisar propriedades',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
                isDense: true,
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    )),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
