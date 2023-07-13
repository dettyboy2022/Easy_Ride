import 'package:easy_ride/screens/transportation/availablec_cars.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatefulWidget {
  final AvailableCars carInfo;
  const CarDetails({super.key, required this.carInfo});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
