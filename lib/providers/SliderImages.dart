class Slider {
  String image;

  Slider(this.image);
}

class SliderList {
  List<Slider> _list;

  List<Slider> get list => _list;

  SliderList() {
    _list = [
      Slider('assets/images/1.jpg'),
      Slider('assets/images/2.jpg'),
      Slider('assets/images/3.png'),
      Slider('assets/images/4.png'),
    ];
  }
}
