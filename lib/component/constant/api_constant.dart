class ApiConstant {
  String baseUrl = 'https://api.spoonacular.com/recipes/complexSearch';
  String apiKey = '?apiKey=b55688a57f7e4e0bb553a7ca7a17c8b5';
  String number = '&number=20';
  String getListMenu() {
    return baseUrl + apiKey + number;
  }
}
