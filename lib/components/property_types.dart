import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mozprop/model/models.dart';
import 'package:mozprop/store/property_type_store.dart';

class PropertyTypes extends StatelessWidget {
  final PropertyTypeStore propertyTypeStore = GetIt.I<PropertyTypeStore>();

  PropertyTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.transparent,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: propertyTypeStore.allPropertyTypes.length,
        itemBuilder: (BuildContext context, int index) {
          final PropertyType propertyType =
              propertyTypeStore.allPropertyTypes[index];
          return Container(
            margin: const EdgeInsets.all(10),
            height: 50,
            width: 80,
            color: Colors.transparent,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    propertyTypeStore.propertyTypes[index].imageUrl,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                    scale: 1.0,
                  ),
                ),
                Expanded(
                  child: Text(
                    propertyTypeStore.propertyTypes[index].type,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.039,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
