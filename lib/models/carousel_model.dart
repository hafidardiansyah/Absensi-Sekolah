class CarouselModel {
  CarouselModel({this.image, this.title, this.description});
  String? image, title, description;

  List<CarouselModel> carousel = [
    CarouselModel(
        image: 'assets/images/data_intro.svg',
        title: 'text',
        description: 'text'),
    CarouselModel(
        image: 'assets/images/data_intro.svg',
        title: 'text1',
        description: 'text'),
    CarouselModel(
        image: 'assets/images/data_intro.svg',
        title: 'text2',
        description: 'text'),
  ];
}
