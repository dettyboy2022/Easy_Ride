class PageData {
  final String image;
  final String text;
  final String subtext;

  PageData({
    required this.image,
    required this.text,
    required this.subtext,
  });
}

List<PageData> pageList = [
  PageData(
      image: 'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687040750/easy_ride/anywhere_lsxzeq.png',
      text: 'Anywhere you are',
      subtext:
          'Welcome aboard! Fasten your seatbelt and enjoy the ride to convenience and comfort.'),
  PageData(
      image: 'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687040750/easy_ride/anytime_s2idkn.png',
      text: 'At anytime',
      subtext:
          'Hop in and let us take the wheel. Sit back, relax, and let our ride app simplify your journey.'),
  PageData(
      image: 'https://res.cloudinary.com/dxje0rp9f/image/upload/v1687040750/easy_ride/frame1_ykwjix.png',
      text: 'Book your Ride',
      subtext:
          'Join us on the road to seamless transportation. Get ready to experience a smoother, smarter way to travel.')
];
