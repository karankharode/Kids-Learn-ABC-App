import 'package:kidsapp/config.dart';

List currentGridData = [];
List alphabetGridData = [];

createCurrentGridData() {
  alphabetGridData.clear();
  
  currentGridData =
      allData[homepageTiles[currentIndex]['title'].toString().toLowerCase()]
          ['assets'];



  if (currentIndex == 0) {
    for (var key in currentGridData) {
      if (key['progress'] == 0) {
        alphabetGridData.add(key);
      }
    }
  }
}
