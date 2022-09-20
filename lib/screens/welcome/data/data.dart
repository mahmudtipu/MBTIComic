class SliderModel {

  String imagePath;
  String title;
  String desc;

  SliderModel({required this.imagePath, required this.title, required this.desc});

  void setImageAssetPath(String getImagePath){
    imagePath = getImagePath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

  String getTitle(){
    return title;
  }

  String getdesc(){
    return desc;
  }
}

List<SliderModel> getSlides(){
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel(imagePath: "assets/images/getstarted.png",title: "Welcome to the MBTI.comics game!",desc: "Collect stickers of your favorite MBTI types and make wonderful collages with them. Earn stickers in minigames, where you can test your knowledge about MBTI.");
  slides.add(sliderModel);

  sliderModel = new SliderModel(imagePath: "assets/images/getstartedmbti.png",title: "How much do you truly know about MBTI?",desc: "Find out by playing 4 types of minigames: The stereotype, the casino, the quiz and the cognitive functions game.");
  slides.add(sliderModel);

  sliderModel = new SliderModel(imagePath: "assets/images/goodluck.png",title: "Go for it!",desc: "Let's find out your MBTI type based on your answer and collect stickers according to that. Good luck!");
  slides.add(sliderModel);

  return slides;
}