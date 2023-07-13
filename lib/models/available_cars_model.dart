class AvailableCars {
  final String car;
  final String image;

  AvailableCars({required this.car, required this.image});
}

List<AvailableCars> carsList = [
  AvailableCars(
      image:
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689247712/easy_ride/image_6_bnuq9i.png',
      car: 'BMW Cabrio'),
  AvailableCars(
      image:
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_3_gclcit.png',
      car: 'Mustang Sheiby GT'),
  AvailableCars(
      image:
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689266541/easy_ride/image_4_c7am4j.png',
      car: 'Jaguar Silber'),
  AvailableCars(
      image:
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689263580/easy_ride/image_5_q9dptd.png',
      car: 'BMW M8'),
  AvailableCars(
      image:
          'https://res.cloudinary.com/dxje0rp9f/image/upload/v1689263580/easy_ride/image_5_q9dptd.png',
      car: 'BMW Cabrio'),
];
