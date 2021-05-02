final String imageAssetsRoot = "Images/";
final String image1 = _getImagePath("01.png");
final String splash_logo = _getImagePath("thevenuelogo.png");


String _getImagePath(String fileName){
  return imageAssetsRoot + fileName;
}