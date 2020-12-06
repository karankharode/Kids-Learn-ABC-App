import 'package:flutter/material.dart';

int currentIndex = 0;
bool autoPlaying = true;
  var playbutton = Icons.stop_circle_outlined;
  var sound = Icons.volume_up;
  bool soundON = true;
List homepageTiles = [
  {
    'title': 'Alphabets',
    'imgpath': './assets/alphabets_btn.webp',
    'keyword': ''
  },
  {'title': 'Animals', 'imgpath': './assets/animals_btn.webp', 'keyword': ''},
  {'title': 'Birds', 'imgpath': './assets/birds_btn.webp', 'keyword': ''},
  {'title': 'Fruits', 'imgpath': './assets/fruits_btn.webp', 'keyword': ''},
  {
    'title': 'Vegetables',
    'imgpath': './assets/vegetables_btn.webp',
    'keyword': ''
  },
  {'title': 'Colors', 'imgpath': './assets/colors_btn.webp', 'keyword': ''},
  {'title': 'Shapes', 'imgpath': './assets/shapes_btn.webp', 'keyword': ''},
  {'title': 'Vehicles', 'imgpath': './assets/vehicles_btn.webp', 'keyword': ''},
  {'title': 'Days', 'imgpath': './assets/weeks_btn.webp', 'keyword': ''},
  {'title': 'Months', 'imgpath': './assets/months_btn.webp', 'keyword': ''},
  {'title': 'Numbers', 'imgpath': './assets/numbers_btn.webp', 'keyword': ''},
  {'title': 'Goodhabits', 'imgpath': './assets/goodhabits.webp', 'keyword': ''},
  {
    'title': 'Bodyparts',
    'imgpath': './assets/bodyparts_btn.webp',
    'keyword': ''
  },
  {'title': 'Places', 'imgpath': './assets/places_btn.webp', 'keyword': ''},
  {
    'title': 'Professions',
    'imgpath': './assets/profession_btn.webp',
    'keyword': ''
  },
  {'title': 'Solarsystem', 'imgpath': './assets/solar_btn.webp', 'keyword': ''},
  // {
  //   'title': 'Sightwords',
  //   'imgpath': './assets/sightwords_btn.webp',
  //   'keyword': ''
  // },
  // {'title': 'Games', 'imgpath': './assets/games_btn.webp', 'keyword': ''},
  {
    'title': 'Interestingfacts',
    'imgpath': './assets/facts_btn.webp',
    'keyword': ''
  }
];

Map allData = {
  "alphabets": {
    "assets": [
      {"word": "", "img": "a", "sound": "a", "u": "", "l": "", "progress": 0},
      {
        "word": "Apple",
        "img": "apple",
        "sound": "apple",
        "u": "A",
        "l": "a",
        "progress": 10
      },
      {
        "word": "Ant",
        "img": "ant",
        "sound": "ant",
        "u": "A",
        "l": "a",
        "progress": 20
      },
      {
        "word": "Aeroplane",
        "img": "aeroplane",
        "sound": "aeroplane",
        "u": "A",
        "l": "a",
        "progress": 30
      },
      {
        "word": "Alligator",
        "img": "alligator",
        "sound": "alligator",
        "u": "A",
        "l": "a",
        "progress": 40
      },
      {
        "word": "Ape",
        "img": "ape",
        "sound": "ape",
        "u": "A",
        "l": "a",
        "progress": 50
      },
      {
        "word": "Animals",
        "img": "animals",
        "sound": "animals",
        "u": "A",
        "l": "a",
        "progress": 60
      },
      {
        "word": "Ambulance",
        "img": "ambulance",
        "sound": "ambulance",
        "u": "A",
        "l": "a",
        "progress": 70
      },
      {
        "word": "Anchor",
        "img": "anchor",
        "sound": "anchor",
        "u": "A",
        "l": "a",
        "progress": 80
      },
      {
        "word": "Axe",
        "img": "axe",
        "sound": "axe",
        "u": "A",
        "l": "a",
        "progress": 90
      },
      {
        "word": "Astronaut",
        "img": "astronaut",
        "sound": "astronaut",
        "u": "A",
        "l": "a",
        "progress": 100
      },
      {"word": "", "img": "b", "sound": "b", "u": "", "l": "", "progress": 0},
      {
        "word": "Ball",
        "img": "ball",
        "sound": "ball",
        "u": "B",
        "l": "b",
        "progress": 10
      },
      {
        "word": "Bus",
        "img": "bus",
        "sound": "bus",
        "u": "B",
        "l": "b",
        "progress": 20
      },
      {
        "word": "Balloon",
        "img": "balloon",
        "sound": "balloon",
        "u": "B",
        "l": "b",
        "progress": 30
      },
      {
        "word": "Banana",
        "img": "banana",
        "sound": "banana",
        "u": "B",
        "l": "b",
        "progress": 40
      },
      {
        "word": "Butterfly",
        "img": "butterfly",
        "sound": "butterfly",
        "u": "B",
        "l": "b",
        "progress": 50
      },
      {
        "word": "Bulb",
        "img": "bulb",
        "sound": "bulb",
        "u": "B",
        "l": "b",
        "progress": 60
      },
      {
        "word": "Book",
        "img": "book",
        "sound": "book",
        "u": "B",
        "l": "b",
        "progress": 70
      },
      {
        "word": "Bell",
        "img": "bell",
        "sound": "bell",
        "u": "B",
        "l": "b",
        "progress": 80
      },
      {
        "word": "Bear",
        "img": "bear",
        "sound": "bear",
        "u": "B",
        "l": "b",
        "progress": 90
      },
      {
        "word": "Broom",
        "img": "broom",
        "sound": "broom",
        "u": "B",
        "l": "b",
        "progress": 100
      },
      {"word": "", "img": "c", "sound": "c", "u": "", "l": "", "progress": 0},
      {
        "word": "Car",
        "img": "car",
        "sound": "car",
        "u": "C",
        "l": "c",
        "progress": 10
      },
      {
        "word": "Cat",
        "img": "cat",
        "sound": "cat",
        "u": "C",
        "l": "c",
        "progress": 20
      },
      {
        "word": "Cow",
        "img": "cow",
        "sound": "cow",
        "u": "C",
        "l": "c",
        "progress": 30
      },
      {
        "word": "Clock",
        "img": "clock",
        "sound": "clock",
        "u": "C",
        "l": "c",
        "progress": 40
      },
      {
        "word": "Crow",
        "img": "crow",
        "sound": "crow",
        "u": "C",
        "l": "c",
        "progress": 50
      },
      {
        "word": "Cake",
        "img": "cake",
        "sound": "cake",
        "u": "C",
        "l": "c",
        "progress": 60
      },
      {
        "word": "Candy",
        "img": "candy",
        "sound": "candy",
        "u": "C",
        "l": "c",
        "progress": 70
      },
      {
        "word": "Caterpillar",
        "img": "caterpillar",
        "sound": "caterpillar",
        "u": "C",
        "l": "c",
        "progress": 80
      },
      {
        "word": "Crab",
        "img": "crab",
        "sound": "crab",
        "u": "C",
        "l": "c",
        "progress": 90
      },
      {
        "word": "Crown",
        "img": "crown",
        "sound": "crown",
        "u": "C",
        "l": "c",
        "progress": 100
      },
      {"word": "", "img": "d", "sound": "d", "u": "", "l": "", "progress": 0},
      {
        "word": "Dog",
        "img": "dog",
        "sound": "dog",
        "u": "D",
        "l": "d",
        "progress": 10
      },
      {
        "word": "Deer",
        "img": "deer",
        "sound": "deer",
        "u": "D",
        "l": "d",
        "progress": 20
      },
      {
        "word": "Donkey",
        "img": "donkey",
        "sound": "donkey",
        "u": "D",
        "l": "d",
        "progress": 30
      },
      {
        "word": "Dinosaur",
        "img": "dinosaur",
        "sound": "dinosaur",
        "u": "D",
        "l": "d",
        "progress": 40
      },
      {
        "word": "Dolphin",
        "img": "dolphin",
        "sound": "dolphin",
        "u": "D",
        "l": "d",
        "progress": 50
      },
      {
        "word": "Drums",
        "img": "drums",
        "sound": "drums",
        "u": "D",
        "l": "d",
        "progress": 60
      },
      {
        "word": "Duck",
        "img": "duck",
        "sound": "duck",
        "u": "D",
        "l": "d",
        "progress": 70
      },
      {
        "word": "Diamond",
        "img": "diamond",
        "sound": "diamond",
        "u": "D",
        "l": "d",
        "progress": 80
      },
      {
        "word": "Dustbin",
        "img": "dustbin",
        "sound": "dustbin",
        "u": "D",
        "l": "d",
        "progress": 90
      },
      {
        "word": "Dice",
        "img": "dice",
        "sound": "dice",
        "u": "D",
        "l": "d",
        "progress": 100
      },
      {"word": "", "img": "e", "sound": "e", "u": "", "l": "", "progress": 0},
      {
        "word": "Elephant",
        "img": "elephant",
        "sound": "elephant",
        "u": "E",
        "l": "e",
        "progress": 10
      },
      {
        "word": "Egg",
        "img": "egg",
        "sound": "egg",
        "u": "E",
        "l": "e",
        "progress": 20
      },
      {
        "word": "Ear",
        "img": "ear",
        "sound": "ear",
        "u": "E",
        "l": "e",
        "progress": 30
      },
      {
        "word": "Eyes",
        "img": "eyes",
        "sound": "eyes",
        "u": "E",
        "l": "e",
        "progress": 40
      },
      {
        "word": "Eagle",
        "img": "eagle",
        "sound": "eagle",
        "u": "E",
        "l": "e",
        "progress": 50
      },
      {
        "word": "Engine",
        "img": "engine",
        "sound": "engine",
        "u": "E",
        "l": "e",
        "progress": 60
      },
      {
        "word": "Eggplant",
        "img": "eggplant",
        "sound": "eggplant",
        "u": "E",
        "l": "e",
        "progress": 70
      },
      {
        "word": "Earth",
        "img": "earth",
        "sound": "earth",
        "u": "E",
        "l": "e",
        "progress": 80
      },
      {
        "word": "Envelope",
        "img": "envelope",
        "sound": "envelope",
        "u": "E",
        "l": "e",
        "progress": 90
      },
      {
        "word": "Eel",
        "img": "eel",
        "sound": "eel",
        "u": "E",
        "l": "e",
        "progress": 100
      },
      {"word": "", "img": "f", "sound": "f", "u": "", "l": "", "progress": 0},
      {
        "word": "Fish",
        "img": "fish",
        "sound": "fish",
        "u": "F",
        "l": "f",
        "progress": 10
      },
      {
        "word": "Fan",
        "img": "fan",
        "sound": "fan",
        "u": "F",
        "l": "f",
        "progress": 20
      },
      {
        "word": "Fruits",
        "img": "fruits",
        "sound": "fruits",
        "u": "F",
        "l": "f",
        "progress": 30
      },
      {
        "word": "Frog",
        "img": "frog",
        "sound": "frog",
        "u": "F",
        "l": "f",
        "progress": 40
      },
      {
        "word": "Flowers",
        "img": "flowers",
        "sound": "flowers",
        "u": "F",
        "l": "f",
        "progress": 50
      },
      {
        "word": "Fox",
        "img": "fox",
        "sound": "fox",
        "u": "F",
        "l": "f",
        "progress": 60
      },
      {
        "word": "Fingers",
        "img": "fingers",
        "sound": "fingers",
        "u": "F",
        "l": "f",
        "progress": 70
      },
      {
        "word": "Fire",
        "img": "fire",
        "sound": "fire",
        "u": "F",
        "l": "f",
        "progress": 80
      },
      {
        "word": "Flag",
        "img": "flag",
        "sound": "flag",
        "u": "F",
        "l": "f",
        "progress": 90
      },
      {
        "word": "Flamingo",
        "img": "flamingo",
        "sound": "flamingo",
        "u": "F",
        "l": "f",
        "progress": 100
      },
      {"word": "", "img": "g", "sound": "g", "u": "", "l": "", "progress": 0},
      {
        "word": "Giraffe",
        "img": "giraffe",
        "sound": "giraffe",
        "u": "G",
        "l": "g",
        "progress": 10
      },
      {
        "word": "Grapes",
        "img": "grapes",
        "sound": "grapes",
        "u": "G",
        "l": "g",
        "progress": 20
      },
      {
        "word": "Goat",
        "img": "goat",
        "sound": "goat",
        "u": "G",
        "l": "g",
        "progress": 30
      },
      {
        "word": "Gift",
        "img": "gift",
        "sound": "gift",
        "u": "G",
        "l": "g",
        "progress": 40
      },
      {
        "word": "Gorilla",
        "img": "gorilla",
        "sound": "gorilla",
        "u": "G",
        "l": "g",
        "progress": 50
      },
      {
        "word": "Glass",
        "img": "glass",
        "sound": "glass",
        "u": "G",
        "l": "g",
        "progress": 60
      },
      {
        "word": "Grass",
        "img": "grass",
        "sound": "grass",
        "u": "G",
        "l": "g",
        "progress": 70
      },
      {
        "word": "Gloves",
        "img": "gloves",
        "sound": "gloves",
        "u": "G",
        "l": "g",
        "progress": 80
      },
      {
        "word": "Globe",
        "img": "globe",
        "sound": "globe",
        "u": "G",
        "l": "g",
        "progress": 90
      },
      {
        "word": "Grasshopper",
        "img": "grasshopper",
        "sound": "grasshopper",
        "u": "G",
        "l": "g",
        "progress": 100
      },
      {"word": "", "img": "h", "sound": "h", "u": "", "l": "", "progress": 0},
      {
        "word": "Hen",
        "img": "hen",
        "sound": "hen",
        "u": "H",
        "l": "h",
        "progress": 10
      },
      {
        "word": "Horse",
        "img": "horse",
        "sound": "horse",
        "u": "H",
        "l": "h",
        "progress": 20
      },
      {
        "word": "Helicopter",
        "img": "helicopter",
        "sound": "helicopter",
        "u": "H",
        "l": "h",
        "progress": 30
      },
      {
        "word": "House",
        "img": "house",
        "sound": "house",
        "u": "H",
        "l": "h",
        "progress": 40
      },
      {
        "word": "Hat",
        "img": "hat",
        "sound": "hat",
        "u": "H",
        "l": "h",
        "progress": 50
      },
      {
        "word": "Honey Bee",
        "img": "honeybee",
        "sound": "honeybee",
        "u": "H",
        "l": "h",
        "progress": 60
      },
      {
        "word": "Hippopotamus",
        "img": "hippopotamus",
        "sound": "hippopotamus",
        "u": "H",
        "l": "h",
        "progress": 70
      },
      {
        "word": "Honey",
        "img": "honey",
        "sound": "honey",
        "u": "H",
        "l": "h",
        "progress": 80
      },
      {
        "word": "Hammer",
        "img": "hammer",
        "sound": "hammer",
        "u": "H",
        "l": "h",
        "progress": 90
      },
      {
        "word": "Humming Bird",
        "img": "hummingbird",
        "sound": "hummingbird",
        "u": "H",
        "l": "h",
        "progress": 100
      },
      {"word": "", "img": "i", "sound": "i", "u": "", "l": "", "progress": 0},
      {
        "word": "Ice cream",
        "img": "icecream",
        "sound": "icecream",
        "u": "I",
        "l": "i",
        "progress": 10
      },
      {
        "word": "Insects",
        "img": "insects",
        "sound": "insects",
        "u": "I",
        "l": "i",
        "progress": 20
      },
      {
        "word": "Iron box",
        "img": "ironbox",
        "sound": "ironbox",
        "u": "I",
        "l": "i",
        "progress": 30
      },
      {
        "word": "Igloo",
        "img": "igloo",
        "sound": "igloo",
        "u": "I",
        "l": "i",
        "progress": 40
      },
      {
        "word": "Ice cubes",
        "img": "icecubes",
        "sound": "icecubes",
        "u": "I",
        "l": "i",
        "progress": 50
      },
      {
        "word": "Iguana",
        "img": "iguana",
        "sound": "iguana",
        "u": "I",
        "l": "i",
        "progress": 60
      },
      {
        "word": "Instruments",
        "img": "instruments",
        "sound": "instruments",
        "u": "I",
        "l": "i",
        "progress": 70
      },
      {
        "word": "Ink",
        "img": "ink",
        "sound": "ink",
        "u": "I",
        "l": "i",
        "progress": 80
      },
      {
        "word": "Inch Tape",
        "img": "inchtape",
        "sound": "inchtape",
        "u": "I",
        "l": "i",
        "progress": 90
      },
      {
        "word": "Ivory",
        "img": "ivory",
        "sound": "ivory",
        "u": "I",
        "l": "i",
        "progress": 100
      },
      {"word": "", "img": "j", "sound": "j", "u": "", "l": "", "progress": 0},
      {
        "word": "Juice",
        "img": "juice",
        "sound": "juice",
        "u": "J",
        "l": "j",
        "progress": 10
      },
      {
        "word": "Joker",
        "img": "joker",
        "sound": "joker",
        "u": "J",
        "l": "j",
        "progress": 20
      },
      {
        "word": "Jackfruit",
        "img": "jackfruit",
        "sound": "jackfruit",
        "u": "J",
        "l": "j",
        "progress": 30
      },
      {
        "word": "Jacket",
        "img": "jacket",
        "sound": "jacket",
        "u": "J",
        "l": "j",
        "progress": 40
      },
      {
        "word": "Jam",
        "img": "jam",
        "sound": "jam",
        "u": "J",
        "l": "j",
        "progress": 50
      },
      {
        "word": "Jelly",
        "img": "jelly",
        "sound": "jelly",
        "u": "J",
        "l": "j",
        "progress": 60
      },
      {
        "word": "Jar",
        "img": "jar",
        "sound": "jar",
        "u": "J",
        "l": "j",
        "progress": 70
      },
      {
        "word": "Jellyfish",
        "img": "jellyfish",
        "sound": "jellyfish",
        "u": "J",
        "l": "j",
        "progress": 80
      },
      {
        "word": "Jug",
        "img": "jug",
        "sound": "jug",
        "u": "J",
        "l": "j",
        "progress": 90
      },
      {
        "word": "Jet",
        "img": "jet",
        "sound": "jet",
        "u": "J",
        "l": "j",
        "progress": 100
      },
      {"word": "", "img": "k", "sound": "k", "u": "", "l": "", "progress": 0},
      {
        "word": "Kangaroo",
        "img": "kangaroo",
        "sound": "kangaroo",
        "u": "K",
        "l": "k",
        "progress": 10
      },
      {
        "word": "King",
        "img": "king",
        "sound": "king",
        "u": "K",
        "l": "k",
        "progress": 20
      },
      {
        "word": "Key",
        "img": "key",
        "sound": "key",
        "u": "K",
        "l": "k",
        "progress": 30
      },
      {
        "word": "Kite",
        "img": "kite",
        "sound": "kite",
        "u": "K",
        "l": "k",
        "progress": 40
      },
      {
        "word": "Koala Bear",
        "img": "koalabear",
        "sound": "koalabear",
        "u": "K",
        "l": "k",
        "progress": 50
      },
      {
        "word": "Kiwi",
        "img": "kiwi",
        "sound": "kiwi",
        "u": "K",
        "l": "k",
        "progress": 60
      },
      {
        "word": "Kettle",
        "img": "kettle",
        "sound": "kettle",
        "u": "K",
        "l": "k",
        "progress": 70
      },
      {
        "word": "Knee",
        "img": "knee",
        "sound": "knee",
        "u": "K",
        "l": "k",
        "progress": 80
      },
      {
        "word": "Knot",
        "img": "knot",
        "sound": "knot",
        "u": "K",
        "l": "k",
        "progress": 90
      },
      {
        "word": "Knife",
        "img": "knife",
        "sound": "knife",
        "u": "K",
        "l": "k",
        "progress": 100
      },
      {"word": "", "img": "l", "sound": "l", "u": "", "l": "", "progress": 0},
      {
        "word": "Lion",
        "img": "lion",
        "sound": "lion",
        "u": "L",
        "l": "l",
        "progress": 10
      },
      {
        "word": "Lemon",
        "img": "lemon",
        "sound": "lemon",
        "u": "L",
        "l": "l",
        "progress": 20
      },
      {
        "word": "Leaf",
        "img": "leaf",
        "sound": "leaf",
        "u": "L",
        "l": "l",
        "progress": 30
      },
      {
        "word": "Lollipop",
        "img": "lollipop",
        "sound": "lollipop",
        "u": "L",
        "l": "l",
        "progress": 40
      },
      {
        "word": "Ladies Finger",
        "img": "ladiesfinger",
        "sound": "ladiesfinger",
        "u": "L",
        "l": "l",
        "progress": 50
      },
      {
        "word": "Lotus",
        "img": "lotus",
        "sound": "lotus",
        "u": "L",
        "l": "l",
        "progress": 60
      },
      {
        "word": "Ladder",
        "img": "ladder",
        "sound": "ladder",
        "u": "L",
        "l": "l",
        "progress": 70
      },
      {
        "word": "Lock",
        "img": "lock",
        "sound": "lock",
        "u": "L",
        "l": "l",
        "progress": 80
      },
      {
        "word": "Lantern",
        "img": "lantern",
        "sound": "lantern",
        "u": "L",
        "l": "l",
        "progress": 90
      },
      {
        "word": "Lipstick",
        "img": "lipstick",
        "sound": "lipstick",
        "u": "L",
        "l": "l",
        "progress": 100
      },
      {"word": "", "img": "m", "sound": "m", "u": "", "l": "", "progress": 0},
      {
        "word": "Mango",
        "img": "mango",
        "sound": "mango",
        "u": "M",
        "l": "m",
        "progress": 10
      },
      {
        "word": "Monkey",
        "img": "monkey",
        "sound": "monkey",
        "u": "M",
        "l": "m",
        "progress": 20
      },
      {
        "word": "Milk",
        "img": "milk",
        "sound": "milk",
        "u": "M",
        "l": "m",
        "progress": 30
      },
      {
        "word": "Moon",
        "img": "moon",
        "sound": "moon",
        "u": "M",
        "l": "m",
        "progress": 40
      },
      {
        "word": "Mug",
        "img": "mug",
        "sound": "mug",
        "u": "M",
        "l": "m",
        "progress": 50
      },
      {
        "word": "Mushroom",
        "img": "mushroom",
        "sound": "mushroom",
        "u": "M",
        "l": "m",
        "progress": 60
      },
      {
        "word": "Mountain",
        "img": "mountain",
        "sound": "mountain",
        "u": "M",
        "l": "m",
        "progress": 70
      },
      {
        "word": "Mosquito",
        "img": "mosquito",
        "sound": "mosquito",
        "u": "M",
        "l": "m",
        "progress": 80
      },
      {
        "word": "Mirror",
        "img": "mirror",
        "sound": "mirror",
        "u": "M",
        "l": "m",
        "progress": 90
      },
      {
        "word": "Mobile",
        "img": "mobile",
        "sound": "mobile",
        "u": "M",
        "l": "m",
        "progress": 100
      },
      {"word": "", "img": "n", "sound": "n", "u": "", "l": "", "progress": 0},
      {
        "word": "Net",
        "img": "net",
        "sound": "net",
        "u": "N",
        "l": "n",
        "progress": 10
      },
      {
        "word": "Nose",
        "img": "nose",
        "sound": "nose",
        "u": "N",
        "l": "n",
        "progress": 20
      },
      {
        "word": "Notebook",
        "img": "notebook",
        "sound": "notebook",
        "u": "N",
        "l": "n",
        "progress": 30
      },
      {
        "word": "Noodles",
        "img": "noodles",
        "sound": "noodles",
        "u": "N",
        "l": "n",
        "progress": 40
      },
      {
        "word": "Nest",
        "img": "nest",
        "sound": "nest",
        "u": "N",
        "l": "n",
        "progress": 50
      },
      {
        "word": "Nail",
        "img": "nail",
        "sound": "nail",
        "u": "N",
        "l": "n",
        "progress": 60
      },
      {
        "word": "Needle",
        "img": "needle",
        "sound": "needle",
        "u": "N",
        "l": "n",
        "progress": 70
      },
      {
        "word": "Nuts",
        "img": "nuts",
        "sound": "nuts",
        "u": "N",
        "l": "n",
        "progress": 80
      },
      {
        "word": "Newspaper",
        "img": "newspaper",
        "sound": "newspaper",
        "u": "N",
        "l": "n",
        "progress": 90
      },
      {
        "word": "Nib",
        "img": "nib",
        "sound": "nib",
        "u": "N",
        "l": "n",
        "progress": 100
      },
      {"word": "", "img": "o", "sound": "o", "u": "", "l": "", "progress": 0},
      {
        "word": "Orange",
        "img": "orange",
        "sound": "orange",
        "u": "O",
        "l": "o",
        "progress": 10
      },
      {
        "word": "Onion",
        "img": "onion",
        "sound": "onion",
        "u": "O",
        "l": "o",
        "progress": 20
      },
      {
        "word": "Octopus",
        "img": "octopus",
        "sound": "octopus",
        "u": "O",
        "l": "o",
        "progress": 30
      },
      {
        "word": "Ocean",
        "img": "ocean",
        "sound": "ocean",
        "u": "O",
        "l": "o",
        "progress": 40
      },
      {
        "word": "Ostrich",
        "img": "ostrich",
        "sound": "ostrich",
        "u": "O",
        "l": "o",
        "progress": 50
      },
      {
        "word": "Owl",
        "img": "owl",
        "sound": "owl",
        "u": "O",
        "l": "o",
        "progress": 60
      },
      {
        "word": "Ox",
        "img": "ox",
        "sound": "ox",
        "u": "O",
        "l": "o",
        "progress": 70
      },
      {
        "word": "Organs",
        "img": "organs",
        "sound": "organs",
        "u": "O",
        "l": "o",
        "progress": 80
      },
      {
        "word": "Oil",
        "img": "oil",
        "sound": "oil",
        "u": "O",
        "l": "o",
        "progress": 90
      },
      {
        "word": "Oyster",
        "img": "oyster",
        "sound": "oyster",
        "u": "O",
        "l": "o",
        "progress": 100
      },
      {"word": "", "img": "p", "sound": "p", "u": "", "l": "", "progress": 0},
      {
        "word": "Peacock",
        "img": "peacock",
        "sound": "peacock",
        "u": "P",
        "l": "p",
        "progress": 10
      },
      {
        "word": "Parrot",
        "img": "parrot",
        "sound": "parrot",
        "u": "P",
        "l": "p",
        "progress": 20
      },
      {
        "word": "Pig",
        "img": "pig",
        "sound": "pig",
        "u": "P",
        "l": "p",
        "progress": 30
      },
      {
        "word": "Potato",
        "img": "potato",
        "sound": "potato",
        "u": "P",
        "l": "p",
        "progress": 40
      },
      {
        "word": "Pineapple",
        "img": "pineapple",
        "sound": "pineapple",
        "u": "P",
        "l": "p",
        "progress": 50
      },
      {
        "word": "Papaya",
        "img": "papaya",
        "sound": "papaya",
        "u": "P",
        "l": "p",
        "progress": 60
      },
      {
        "word": "Panda",
        "img": "panda",
        "sound": "panda",
        "u": "P",
        "l": "p",
        "progress": 70
      },
      {
        "word": "Pumpkin",
        "img": "pumpkin",
        "sound": "pumpkin",
        "u": "P",
        "l": "p",
        "progress": 80
      },
      {
        "word": "Pot",
        "img": "pot",
        "sound": "pot",
        "u": "P",
        "l": "p",
        "progress": 90
      },
      {
        "word": "Piano",
        "img": "piano",
        "sound": "piano",
        "u": "P",
        "l": "p",
        "progress": 100
      },
      {"word": "", "img": "q", "sound": "q", "u": "", "l": "", "progress": 0},
      {
        "word": "Queen",
        "img": "queen",
        "sound": "queen",
        "u": "Q",
        "l": "q",
        "progress": 10
      },
      {
        "word": "Question Mark",
        "img": "questionmark",
        "sound": "questionmark",
        "u": "Q",
        "l": "q",
        "progress": 20
      },
      {
        "word": "Queue",
        "img": "queue",
        "sound": "queue",
        "u": "Q",
        "l": "q",
        "progress": 30
      },
      {
        "word": "Quartz",
        "img": "quartz",
        "sound": "quartz",
        "u": "Q",
        "l": "q",
        "progress": 40
      },
      {
        "word": "Quail",
        "img": "quail",
        "sound": "quail",
        "u": "Q",
        "l": "q",
        "progress": 50
      },
      {
        "word": "Quarter",
        "img": "quarter",
        "sound": "quarter",
        "u": "Q",
        "l": "q",
        "progress": 60
      },
      {
        "word": "Quill",
        "img": "quill",
        "sound": "quill",
        "u": "Q",
        "l": "q",
        "progress": 70
      },
      {
        "word": "Quiver",
        "img": "quiver",
        "sound": "quiver",
        "u": "Q",
        "l": "q",
        "progress": 80
      },
      {
        "word": "Quilt",
        "img": "quilt",
        "sound": "quilt",
        "u": "Q",
        "l": "q",
        "progress": 90
      },
      {
        "word": "Quadruplets",
        "img": "quadruplets",
        "sound": "quadruplets",
        "u": "Q",
        "l": "q",
        "progress": 100
      },
      {"word": "", "img": "r", "sound": "r", "u": "", "l": "", "progress": 0},
      {
        "word": "Rabbit",
        "img": "rabbit",
        "sound": "rabbit",
        "u": "R",
        "l": "r",
        "progress": 10
      },
      {
        "word": "Rat",
        "img": "rat",
        "sound": "rat",
        "u": "R",
        "l": "r",
        "progress": 20
      },
      {
        "word": "Rose",
        "img": "rose",
        "sound": "rose",
        "u": "R",
        "l": "r",
        "progress": 30
      },
      {
        "word": "Rainbow",
        "img": "rainbow",
        "sound": "rainbow",
        "u": "R",
        "l": "r",
        "progress": 40
      },
      {
        "word": "Ring",
        "img": "ring",
        "sound": "ring",
        "u": "R",
        "l": "r",
        "progress": 50
      },
      {
        "word": "Rocket",
        "img": "rocket",
        "sound": "rocket",
        "u": "R",
        "l": "r",
        "progress": 60
      },
      {
        "word": "Robot",
        "img": "robot",
        "sound": "robot",
        "u": "R",
        "l": "r",
        "progress": 70
      },
      {
        "word": "Raccoon",
        "img": "raccoon",
        "sound": "raccoon",
        "u": "R",
        "l": "r",
        "progress": 80
      },
      {
        "word": "Rattle",
        "img": "rattle",
        "sound": "rattle",
        "u": "R",
        "l": "r",
        "progress": 90
      },
      {
        "word": "Rope",
        "img": "rope",
        "sound": "rope",
        "u": "R",
        "l": "r",
        "progress": 100
      },
      {"word": "", "img": "s", "sound": "s", "u": "", "l": "", "progress": 0},
      {
        "word": "Squirrel",
        "img": "squirrel",
        "sound": "squirrel",
        "u": "S",
        "l": "s",
        "progress": 10
      },
      {
        "word": "Snake",
        "img": "snake",
        "sound": "snake",
        "u": "S",
        "l": "s",
        "progress": 20
      },
      {
        "word": "Sheep",
        "img": "sheep",
        "sound": "sheep",
        "u": "S",
        "l": "s",
        "progress": 30
      },
      {
        "word": "Snail",
        "img": "snail",
        "sound": "snail",
        "u": "S",
        "l": "s",
        "progress": 40
      },
      {
        "word": "Spider",
        "img": "spider",
        "sound": "spider",
        "u": "S",
        "l": "s",
        "progress": 50
      },
      {
        "word": "Sun",
        "img": "sun",
        "sound": "sun",
        "u": "S",
        "l": "s",
        "progress": 60
      },
      {
        "word": "Stars",
        "img": "stars",
        "sound": "stars",
        "u": "S",
        "l": "s",
        "progress": 70
      },
      {
        "word": "Snow",
        "img": "snow",
        "sound": "snow",
        "u": "S",
        "l": "s",
        "progress": 80
      },
      {
        "word": "Shark",
        "img": "shark",
        "sound": "shark",
        "u": "S",
        "l": "s",
        "progress": 90
      },
      {
        "word": "Scissors",
        "img": "scissors",
        "sound": "scissors",
        "u": "S",
        "l": "s",
        "progress": 100
      },
      {"word": "", "img": "t", "sound": "t", "u": "", "l": "", "progress": 0},
      {
        "word": "Tiger",
        "img": "tiger",
        "sound": "tiger",
        "u": "T",
        "l": "t",
        "progress": 10
      },
      {
        "word": "Train",
        "img": "train",
        "sound": "train",
        "u": "T",
        "l": "t",
        "progress": 20
      },
      {
        "word": "Tree",
        "img": "tree",
        "sound": "tree",
        "u": "T",
        "l": "t",
        "progress": 30
      },
      {
        "word": "Tomato",
        "img": "tomato",
        "sound": "tomato",
        "u": "T",
        "l": "t",
        "progress": 40
      },
      {
        "word": "Tap",
        "img": "tap",
        "sound": "tap",
        "u": "T",
        "l": "t",
        "progress": 50
      },
      {
        "word": "Television",
        "img": "television",
        "sound": "television",
        "u": "T",
        "l": "t",
        "progress": 60
      },
      {
        "word": "Tie",
        "img": "tie",
        "sound": "tie",
        "u": "T",
        "l": "t",
        "progress": 70
      },
      {
        "word": "Toothbrush",
        "img": "toothbrush",
        "sound": "toothbrush",
        "u": "T",
        "l": "t",
        "progress": 80
      },
      {
        "word": "Telescope",
        "img": "telescope",
        "sound": "telescope",
        "u": "T",
        "l": "t",
        "progress": 90
      },
      {
        "word": "Tortoise",
        "img": "tortoise",
        "sound": "tortoise",
        "u": "T",
        "l": "t",
        "progress": 100
      },
      {"word": "", "img": "u", "sound": "u", "u": "", "l": "", "progress": 0},
      {
        "word": "Umbrella",
        "img": "umbrella",
        "sound": "umbrella",
        "u": "U",
        "l": "u",
        "progress": 10
      },
      {
        "word": "Uniform",
        "img": "uniform",
        "sound": "uniform",
        "u": "U",
        "l": "u",
        "progress": 20
      },
      {
        "word": "Umpire",
        "img": "umpire",
        "sound": "umpire",
        "u": "U",
        "l": "u",
        "progress": 30
      },
      {
        "word": "UFO",
        "img": "ufo",
        "sound": "ufo",
        "u": "U",
        "l": "u",
        "progress": 40
      },
      {
        "word": "Unicorn",
        "img": "unicorn",
        "sound": "unicorn",
        "u": "U",
        "l": "u",
        "progress": 50
      },
      {
        "word": "Unicycle",
        "img": "unicycle",
        "sound": "unicycle",
        "u": "U",
        "l": "u",
        "progress": 60
      },
      {
        "word": "Utensils",
        "img": "utensils",
        "sound": "utensils",
        "u": "U",
        "l": "u",
        "progress": 70
      },
      {
        "word": "Uproot",
        "img": "uproot",
        "sound": "uproot",
        "u": "U",
        "l": "u",
        "progress": 80
      },
      {
        "word": "Upward",
        "img": "upward",
        "sound": "upward",
        "u": "U",
        "l": "u",
        "progress": 90
      },
      {
        "word": "Ukulele",
        "img": "ukulele",
        "sound": "ukulele",
        "u": "U",
        "l": "u",
        "progress": 100
      },
      {"word": "", "img": "v", "sound": "v", "u": "", "l": "", "progress": 0},
      {
        "word": "Van",
        "img": "van",
        "sound": "van",
        "u": "V",
        "l": "v",
        "progress": 10
      },
      {
        "word": "Vegetables",
        "img": "vegetables",
        "sound": "vegetables",
        "u": "V",
        "l": "v",
        "progress": 20
      },
      {
        "word": "Vulture",
        "img": "vulture",
        "sound": "vulture",
        "u": "V",
        "l": "v",
        "progress": 30
      },
      {
        "word": "Vest",
        "img": "vest",
        "sound": "vest",
        "u": "V",
        "l": "v",
        "progress": 40
      },
      {
        "word": "Volcano",
        "img": "volcano",
        "sound": "volcano",
        "u": "V",
        "l": "v",
        "progress": 50
      },
      {
        "word": "Violin",
        "img": "violin",
        "sound": "violin",
        "u": "V",
        "l": "v",
        "progress": 60
      },
      {
        "word": "Valve",
        "img": "valve",
        "sound": "valve",
        "u": "V",
        "l": "v",
        "progress": 70
      },
      {
        "word": "Vase",
        "img": "vase",
        "sound": "vase",
        "u": "V",
        "l": "v",
        "progress": 80
      },
      {
        "word": "Volleyball",
        "img": "volleyball",
        "sound": "volleyball",
        "u": "V",
        "l": "v",
        "progress": 90
      },
      {
        "word": "Vaccum cleaner",
        "img": "vaccumcleaner",
        "sound": "vaccumcleaner",
        "u": "V",
        "l": "v",
        "progress": 100
      },
      {"word": "", "img": "w", "sound": "w", "u": "", "l": "", "progress": 0},
      {
        "word": "Watch",
        "img": "watch",
        "sound": "watch",
        "u": "W",
        "l": "w",
        "progress": 10
      },
      {
        "word": "Waterfall",
        "img": "waterfall",
        "sound": "waterfall",
        "u": "W",
        "l": "w",
        "progress": 20
      },
      {
        "word": "Watermelon",
        "img": "watermelon",
        "sound": "watermelon",
        "u": "W",
        "l": "w",
        "progress": 30
      },
      {
        "word": "Wheat",
        "img": "wheat",
        "sound": "wheat",
        "u": "W",
        "l": "w",
        "progress": 40
      },
      {
        "word": "Whistle",
        "img": "whistle",
        "sound": "whistle",
        "u": "W",
        "l": "w",
        "progress": 50
      },
      {
        "word": "Window",
        "img": "window",
        "sound": "window",
        "u": "W",
        "l": "w",
        "progress": 60
      },
      {
        "word": "Woodpecker",
        "img": "woodpecker",
        "sound": "woodpecker",
        "u": "W",
        "l": "w",
        "progress": 70
      },
      {
        "word": "Worm",
        "img": "worm",
        "sound": "worm",
        "u": "W",
        "l": "w",
        "progress": 80
      },
      {
        "word": "Wolf",
        "img": "wolf",
        "sound": "wolf",
        "u": "W",
        "l": "w",
        "progress": 90
      },
      {
        "word": "Wallet",
        "img": "wallet",
        "sound": "wallet",
        "u": "W",
        "l": "w",
        "progress": 100
      },
      {"word": "", "img": "x", "sound": "x", "u": "", "l": "", "progress": 0},
      {
        "word": "Xylophone",
        "img": "xylophone",
        "sound": "xylophone",
        "u": "X",
        "l": "x",
        "progress": 10
      },
      {
        "word": "Xmax tree",
        "img": "xmaxtree",
        "sound": "xmaxtree",
        "u": "X",
        "l": "x",
        "progress": 20
      },
      {
        "word": "Xerox machine",
        "img": "xeroxmachine",
        "sound": "xeroxmachine",
        "u": "X",
        "l": "x",
        "progress": 30
      },
      {
        "word": "Xiphias",
        "img": "xiphias",
        "sound": "xiphias",
        "u": "X",
        "l": "x",
        "progress": 40
      },
      {
        "word": "X ray",
        "img": "xray",
        "sound": "xray",
        "u": "X",
        "l": "x",
        "progress": 50
      },
      {
        "word": "Xyster",
        "img": "xyster",
        "sound": "xyster",
        "u": "X",
        "l": "x",
        "progress": 60
      },
      {
        "word": "Xigua",
        "img": "xigua",
        "sound": "xigua",
        "u": "X",
        "l": "x",
        "progress": 70
      },
      {
        "word": "Xenops",
        "img": "xenops",
        "sound": "xenops",
        "u": "X",
        "l": "x",
        "progress": 80
      },
      {
        "word": "Xerophyte",
        "img": "xerophyte",
        "sound": "xerophyte",
        "u": "X",
        "l": "x",
        "progress": 90
      },
      {
        "word": "X ray machine",
        "img": "xraymachine",
        "sound": "xraymachine",
        "u": "X",
        "l": "x",
        "progress": 100
      },
      {"word": "", "img": "y", "sound": "y", "u": "", "l": "", "progress": 0},
      {
        "word": "Yak",
        "img": "yak",
        "sound": "yak",
        "u": "Y",
        "l": "y",
        "progress": 10
      },
      {
        "word": "Yolk",
        "img": "yolk",
        "sound": "yolk",
        "u": "Y",
        "l": "y",
        "progress": 20
      },
      {
        "word": "Yacht",
        "img": "yacht",
        "sound": "yacht",
        "u": "Y",
        "l": "y",
        "progress": 30
      },
      {
        "word": "Yarn",
        "img": "yarn",
        "sound": "yarn",
        "u": "Y",
        "l": "y",
        "progress": 40
      },
      {
        "word": "Yo Yo",
        "img": "yoyo",
        "sound": "yoyo",
        "u": "Y",
        "l": "y",
        "progress": 50
      },
      {
        "word": "Yoga",
        "img": "yoga",
        "sound": "yoga",
        "u": "Y",
        "l": "y",
        "progress": 60
      },
      {
        "word": "Yam",
        "img": "yam",
        "sound": "yam",
        "u": "Y",
        "l": "y",
        "progress": 70
      },
      {
        "word": "Yawn",
        "img": "yawn",
        "sound": "yawn",
        "u": "Y",
        "l": "y",
        "progress": 80
      },
      {
        "word": "Yogurt",
        "img": "yogurt",
        "sound": "yogurt",
        "u": "Y",
        "l": "y",
        "progress": 90
      },
      {
        "word": "Yashmak",
        "img": "yashmak",
        "sound": "yashmak",
        "u": "Y",
        "l": "y",
        "progress": 100
      },
      {"word": "", "img": "z", "sound": "z", "u": "", "l": "", "progress": 0},
      {
        "word": "Zebra",
        "img": "zebra",
        "sound": "zebra",
        "u": "Z",
        "l": "z",
        "progress": 10
      },
      {
        "word": "Zoo",
        "img": "zoo",
        "sound": "zoo",
        "u": "Z",
        "l": "z",
        "progress": 20
      },
      {
        "word": "Zip",
        "img": "zip",
        "sound": "zip",
        "u": "Z",
        "l": "z",
        "progress": 30
      },
      {
        "word": "Zigzag",
        "img": "zigzag",
        "sound": "zigzag",
        "u": "Z",
        "l": "z",
        "progress": 40
      },
      {
        "word": "Zebra crossing",
        "img": "zebracrossing",
        "sound": "zebracrossing",
        "u": "Z",
        "l": "z",
        "progress": 50
      },
      {
        "word": "Zucchini",
        "img": "zucchini",
        "sound": "zucchini",
        "u": "Z",
        "l": "z",
        "progress": 60
      },
      {
        "word": "Zeester",
        "img": "zeester",
        "sound": "zeester",
        "u": "Z",
        "l": "z",
        "progress": 70
      },
      {
        "word": "Zeepaard",
        "img": "zeepaard",
        "sound": "zeepaard",
        "u": "Z",
        "l": "z",
        "progress": 80
      },
      {
        "word": "Zeeleeuw",
        "img": "zeeleeuw",
        "sound": "zeeleeuw",
        "u": "Z",
        "l": "z",
        "progress": 90
      },
      {
        "word": "Zodiac",
        "img": "zodiac",
        "sound": "zodiac",
        "u": "Z",
        "l": "z",
        "progress": 100
      }
    ]
  },
  "vehicles": {
    "assets": [
      {"word": "Bus", "img": "bus", "sound": "bus", "index": 0},
      {"word": "Car", "img": "car", "sound": "car", "index": 1},
      {"word": "Lorry", "img": "lorry", "sound": "lorry", "index": 2},
      {"word": "Bike", "img": "bike", "sound": "bike", "index": 3},
      {"word": "Scooter", "img": "scooter", "sound": "scooter", "index": 4},
      {"word": "Jeep", "img": "jeep", "sound": "jeep", "index": 5},
      {"word": "Van", "img": "van", "sound": "van", "index": 6},
      {"word": "Train", "img": "train", "sound": "train", "index": 7},
      {
        "word": "Aeroplane",
        "img": "aeroplane",
        "sound": "aeroplane",
        "index": 8
      },
      {
        "word": "Helicopter",
        "img": "helicopter",
        "sound": "helicopter",
        "index": 9
      },
      {"word": "Boat", "img": "boat", "sound": "boat", "index": 10},
      {"word": "Ship", "img": "ship", "sound": "ship", "index": 11},
      {"word": "Auto", "img": "auto", "sound": "auto", "index": 12},
      {"word": "Tricycle", "img": "tricycle", "sound": "tricycle", "index": 13},
      {"word": "Bicycle", "img": "bicycle", "sound": "bicycle", "index": 14},
      {"word": "Taxi", "img": "taxi", "sound": "taxi", "index": 15},
      {"word": "Truck", "img": "truck", "sound": "truck", "index": 16},
      {
        "word": "Police Car",
        "img": "policecar",
        "sound": "policecar",
        "index": 17
      },
      {
        "word": "Ambulance",
        "img": "ambulance",
        "sound": "ambulance",
        "index": 18
      },
      {"word": "Tractor", "img": "tractor", "sound": "tractor", "index": 19},
      {
        "word": "Fire Engine",
        "img": "fireengine",
        "sound": "fireengine",
        "index": 20
      },
      {
        "word": "Proclain ",
        "img": "proclain",
        "sound": "proclain",
        "index": 21
      },
      {"word": "Crane", "img": "crane", "sound": "crane", "index": 22},
      {
        "word": "Road Roller",
        "img": "roadroller",
        "sound": "roadroller",
        "index": 23
      },
      {"word": "Rocket", "img": "rocket", "sound": "rocket", "index": 24},
      {"word": "Unicycle", "img": "unicycle", "sound": "unicycle", "index": 25},
      {
        "word": "Double Decker Bus",
        "img": "doubledeckerbus",
        "sound": "doubledeckerbus",
        "index": 26
      },
      {"word": "Minibus", "img": "minibus", "sound": "minibus", "index": 27},
      {
        "word": "Motorboat",
        "img": "motorboat",
        "sound": "motorboat",
        "index": 28
      },
      {
        "word": "Tanker Lorry",
        "img": "tankerlorry",
        "sound": "tankerlorry",
        "index": 29
      },
      {
        "word": "Concrete Mixer",
        "img": "concretemixer",
        "sound": "concretemixer",
        "index": 30
      },
      {
        "word": "Army Tanker",
        "img": "armytanker",
        "sound": "armytanker",
        "index": 31
      },
      {
        "word": "Submarine",
        "img": "submarine",
        "sound": "submarine",
        "index": 32
      },
      {"word": "Jet", "img": "jet", "sound": "jet", "index": 33},
      {
        "word": "Air Balloon",
        "img": "airballoon",
        "sound": "airballoon",
        "index": 34
      },
      {"word": "Chariot", "img": "chariot", "sound": "chariot", "index": 35},
      {"word": "Chopper", "img": "chopper", "sound": "chopper", "index": 36},
      {
        "word": "Dirt Bike",
        "img": "dirtbike",
        "sound": "dirtbike",
        "index": 37
      },
      {"word": "Glider", "img": "glider", "sound": "glider", "index": 38},
      {"word": "Yacht", "img": "yacht", "sound": "yacht", "index": 39},
      {"word": "Caravel", "img": "caravel", "sound": "caravel", "index": 40},
      {"word": "Ice Boat", "img": "iceboat", "sound": "iceboat", "index": 41},
      {
        "word": "Bullock Cart",
        "img": "bullockcart",
        "sound": "bullockcart",
        "index": 42
      },
      {
        "word": "Horse Cart",
        "img": "horsecart",
        "sound": "horsecart",
        "index": 43
      },
      {"word": "Kayak", "img": "kayak", "sound": "kayak", "index": 44},
      {
        "word": "Narrowboat",
        "img": "narrowboat",
        "sound": "narrowboat",
        "index": 45
      },
      {"word": "Offroad", "img": "offroad", "sound": "offroad", "index": 46},
      {
        "word": "Pedal Boat",
        "img": "pedalboat",
        "sound": "pedalboat",
        "index": 47
      },
      {"word": "Rickshaw", "img": "rickshaw", "sound": "rickshaw", "index": 48},
      {"word": "Zeppelin", "img": "zeppelin", "sound": "zeppelin", "index": 49}
    ]
  },
  "animals": {
    "assets": [
      {"word": "Lion", "img": "lion", "sound": "lion", "index": 0},
      {"word": "Tiger", "img": "tiger", "sound": "tiger", "index": 1},
      {"word": "Elephant", "img": "elephant", "sound": "elephant", "index": 2},
      {"word": "Cheetah", "img": "cheetah", "sound": "cheetah", "index": 3},
      {"word": "Giraffe", "img": "giraffe", "sound": "giraffe", "index": 4},
      {"word": "Bear", "img": "bear", "sound": "bear", "index": 5},
      {"word": "Buffalo", "img": "buffalo", "sound": "buffalo", "index": 6},
      {
        "word": "Hippopotamus",
        "img": "hippopotamus",
        "sound": "hippopotamus",
        "index": 7
      },
      {"word": "Camel", "img": "camel", "sound": "camel", "index": 8},
      {"word": "Monkey", "img": "monkey", "sound": "monkey", "index": 9},
      {"word": "Donkey", "img": "donkey", "sound": "donkey", "index": 10},
      {"word": "Horse", "img": "horse", "sound": "horse", "index": 11},
      {"word": "Kangaroo", "img": "kangaroo", "sound": "kangaroo", "index": 12},
      {
        "word": "Chimpanzee",
        "img": "chimpanzee",
        "sound": "chimpanzee",
        "index": 13
      },
      {"word": "Deer", "img": "deer", "sound": "deer", "index": 14},
      {"word": "Snake", "img": "snake", "sound": "snake", "index": 15},
      {"word": "Mongoose", "img": "mongoose", "sound": "mongoose", "index": 16},
      {"word": "Gorilla", "img": "gorilla", "sound": "gorilla", "index": 17},
      {
        "word": "Alligator",
        "img": "alligator",
        "sound": "alligator",
        "index": 18
      },
      {"word": "Ape", "img": "ape", "sound": "ape", "index": 19},
      {"word": "Fox", "img": "fox", "sound": "fox", "index": 20},
      {"word": "Rabbit", "img": "rabbit", "sound": "rabbit", "index": 21},
      {"word": "Jackal", "img": "jackal", "sound": "jackal", "index": 22},
      {"word": "Walrus", "img": "walrus", "sound": "walrus", "index": 23},
      {"word": "Yak", "img": "yak", "sound": "yak", "index": 24},
      {"word": "Jaguar", "img": "jaguar", "sound": "jaguar", "index": 25},
      {"word": "Zebra", "img": "zebra", "sound": "zebra", "index": 26},
      {
        "word": "Rhinoceros",
        "img": "rhinoceros",
        "sound": "rhinoceros",
        "index": 27
      },
      {"word": "Dinosaur", "img": "dinosaur", "sound": "dinosaur", "index": 28},
      {"word": "Panther", "img": "panther", "sound": "panther", "index": 29},
      {"word": "Hyena", "img": "hyena", "sound": "hyena", "index": 30},
      {"word": "Hamster", "img": "hamster", "sound": "hamster", "index": 31},
      {"word": "Moose", "img": "moose", "sound": "moose", "index": 32},
      {
        "word": "Polarbear",
        "img": "polarbear",
        "sound": "polarbear",
        "index": 33
      },
      {
        "word": "Porcupine",
        "img": "porcupine",
        "sound": "porcupine",
        "index": 34
      },
      {"word": "Raccoon", "img": "raccoon", "sound": "raccoon", "index": 35},
      {"word": "Reindeer", "img": "reindeer", "sound": "reindeer", "index": 36},
      {"word": "Anteater", "img": "anteater", "sound": "anteater", "index": 37},
      {
        "word": "Elephant seal",
        "img": "elephantseal",
        "sound": "elephantseal",
        "index": 38
      },
      {
        "word": "Ultrasaurus",
        "img": "ultrasaurus",
        "sound": "ultrasaurus",
        "index": 39
      }
    ]
  },
  "colors": {
    "assets": [
      {"word": "Red", "img": "red", "sound": "red", "index": 0},
      {"word": "Blue", "img": "blue", "sound": "blue", "index": 1},
      {"word": "Green", "img": "green", "sound": "green", "index": 2},
      {"word": "Yellow", "img": "yellow", "sound": "yellow", "index": 3},
      {"word": "Orange", "img": "orangecolor", "sound": "orange", "index": 4},
      {"word": "White", "img": "white", "sound": "white", "index": 5},
      {"word": "Black", "img": "black", "sound": "black", "index": 6},
      {"word": "Pink", "img": "pink", "sound": "pink", "index": 7},
      {"word": "Violet", "img": "violet", "sound": "violet", "index": 8},
      {"word": "Brown", "img": "brown", "sound": "brown", "index": 9},
      {"word": "Grey", "img": "grey", "sound": "grey", "index": 10},
      {"word": "Purple", "img": "purple", "sound": "purple", "index": 11}
    ]
  },
  "shapes": {
    "assets": [
      {"word": "Circle", "img": "circle", "sound": "circle", "index": 0},
      {"word": "Triangle", "img": "triangle", "sound": "triangle", "index": 1},
      {"word": "Square", "img": "square", "sound": "square", "index": 2},
      {"word": "Star", "img": "star", "sound": "star", "index": 3},
      {
        "word": "Rectangle",
        "img": "rectangle",
        "sound": "rectangle",
        "index": 4
      },
      {"word": "Oval", "img": "oval", "sound": "oval", "index": 5},
      {"word": "Heart", "img": "heart", "sound": "heart", "index": 6},
      {"word": "Cross", "img": "cross", "sound": "cross", "index": 7},
      {
        "word": "Semi Circle",
        "img": "semicircle",
        "sound": "semicircle",
        "index": 8
      },
      {
        "word": "Diamond",
        "img": "diamondshape",
        "sound": "diamond",
        "index": 9
      },
      {"word": "Pentagon", "img": "pentagon", "sound": "pentagon", "index": 10},
      {"word": "Hexagon", "img": "hexagon", "sound": "hexagon", "index": 11},
      {"word": "Octagon", "img": "octagon", "sound": "octagon", "index": 12},
      {"word": "Quadrant", "img": "quadrant", "sound": "quadrant", "index": 13},
      {
        "word": "Trapezoid",
        "img": "trapezoid",
        "sound": "trapezoid",
        "index": 14
      },
      {
        "word": "Parallelogram",
        "img": "parallelogram",
        "sound": "parallelogram",
        "index": 15
      }
    ]
  },
  "fruits": {
    "assets": [
      {"word": "Apple", "img": "apple", "sound": "apple", "index": 0},
      {"word": "Banana", "img": "banana", "sound": "banana", "index": 1},
      {"word": "Mango", "img": "mango", "sound": "mango", "index": 2},
      {"word": "Orange", "img": "orange", "sound": "orange", "index": 3},
      {"word": "Grapes", "img": "grapes", "sound": "grapes", "index": 4},
      {"word": "Papaya", "img": "papaya", "sound": "papaya", "index": 5},
      {
        "word": "Jackfruit",
        "img": "jackfruit",
        "sound": "jackfruit",
        "index": 6
      },
      {
        "word": "Pineapple",
        "img": "pineapple",
        "sound": "pineapple",
        "index": 7
      },
      {"word": "Lemon", "img": "lemon", "sound": "lemon", "index": 8},
      {"word": "Lime", "img": "lime", "sound": "lime", "index": 9},
      {"word": "Tomato", "img": "tomato", "sound": "tomato", "index": 10},
      {"word": "Dates", "img": "dates", "sound": "dates", "index": 11},
      {"word": "Plums", "img": "plums", "sound": "plums", "index": 12},
      {
        "word": "Watermelon",
        "img": "watermelon",
        "sound": "watermelon",
        "index": 13
      },
      {
        "word": "Pomegranate",
        "img": "pomegranate",
        "sound": "pomegranate",
        "index": 14
      },
      {
        "word": "Strawberries",
        "img": "strawberries",
        "sound": "strawberries",
        "index": 15
      },
      {"word": "Peach", "img": "peach", "sound": "peach", "index": 16},
      {"word": "Fig", "img": "fig", "sound": "fig", "index": 17},
      {"word": "Kiwi", "img": "kiwi", "sound": "kiwi", "index": 18},
      {"word": "Cherries", "img": "cherries", "sound": "cherries", "index": 19},
      {
        "word": "Blackberry",
        "img": "blackberry",
        "sound": "blackberry",
        "index": 20
      },
      {
        "word": "Blueberries",
        "img": "blueberries",
        "sound": "blueberries",
        "index": 21
      },
      {"word": "Cucumber", "img": "cucumber", "sound": "cucumber", "index": 22},
      {"word": "Apricot", "img": "apricot", "sound": "apricot", "index": 23},
      {"word": "Avocado", "img": "avocodo", "sound": "avocado", "index": 24},
      {"word": "Pear", "img": "pear", "sound": "pear", "index": 25},
      {"word": "Lychee", "img": "lychee", "sound": "lychee", "index": 26},
      {"word": "Melon", "img": "melon", "sound": "melon", "index": 27},
      {
        "word": "Mangoosteen",
        "img": "mangoosteen",
        "sound": "mangoosteen",
        "index": 28
      },
      {
        "word": "Cranberries",
        "img": "cranberries",
        "sound": "cranberries",
        "index": 29
      },
      {
        "word": "Gooseberries",
        "img": "gooseberries",
        "sound": "gooseberries",
        "index": 30
      },
      {"word": "Coconut", "img": "coconut", "sound": "coconut", "index": 31},
      {
        "word": "Raspberry",
        "img": "raspberry",
        "sound": "raspberry",
        "index": 32
      },
      {
        "word": "Goji berries",
        "img": "gojiberries",
        "sound": "gojiberries",
        "index": 33
      },
      {
        "word": "Mulberries",
        "img": "mulberries",
        "sound": "mulberries",
        "index": 34
      }
    ]
  },
  "vegetables": {
    "assets": [
      {"word": "Carrot", "img": "carrot", "sound": "carrot", "index": 0},
      {"word": "Beetroot", "img": "beetroot", "sound": "beetroot", "index": 1},
      {"word": "Onion", "img": "onion", "sound": "onion", "index": 2},
      {"word": "Potato", "img": "potato", "sound": "potato", "index": 3},
      {"word": "Eggplant", "img": "eggplant", "sound": "eggplant", "index": 4},
      {
        "word": "Green beans",
        "img": "greenbeans",
        "sound": "greenbeans",
        "index": 5
      },
      {"word": "Cabbage", "img": "cabbage", "sound": "cabbage", "index": 6},
      {
        "word": "Cauliflower",
        "img": "cauliflower",
        "sound": "cauliflower",
        "index": 7
      },
      {"word": "Mushroom", "img": "mushroom", "sound": "mushroom", "index": 8},
      {"word": "Radish", "img": "radish", "sound": "radish", "index": 9},
      {
        "word": "Bitter Gourd",
        "img": "bittergourd",
        "sound": "bittergourd",
        "index": 10
      },
      {"word": "Pumpkin", "img": "pumpkin", "sound": "pumpkin", "index": 11},
      {
        "word": "Ladies finger",
        "img": "ladiesfinger",
        "sound": "ladiesfinger",
        "index": 12
      },
      {"word": "Ginger", "img": "ginger", "sound": "ginger", "index": 13},
      {
        "word": "Drumstick",
        "img": "drumstick",
        "sound": "drumstick",
        "index": 14
      },
      {"word": "Capsicum", "img": "capsicum", "sound": "capsicum", "index": 15},
      {"word": "Garlic", "img": "garlic", "sound": "garlic", "index": 16},
      {"word": "Celery", "img": "celery", "sound": "celery", "index": 17},
      {"word": "Spinach", "img": "spinach", "sound": "spinach", "index": 18},
      {"word": "Yam", "img": "yam", "sound": "yam", "index": 19},
      {"word": "Pea", "img": "pea", "sound": "pea", "index": 20},
      {
        "word": "Artichoke",
        "img": "artichoke",
        "sound": "artichoke",
        "index": 21
      },
      {"word": "Chilli", "img": "chilli", "sound": "chilli", "index": 22},
      {"word": "Maize", "img": "maize", "sound": "maize", "index": 23},
      {"word": "Broccoli", "img": "broccoli", "sound": "broccoli", "index": 24},
      {"word": "Zucchini", "img": "zucchini", "sound": "zucchini", "index": 25},
      {
        "word": "Ivy Gourd",
        "img": "ivygourd",
        "sound": "ivygourd",
        "index": 26
      },
      {
        "word": "Lima Beans",
        "img": "limabeans",
        "sound": "limabeans",
        "index": 27
      },
      {
        "word": "Ridged Gourd",
        "img": "ridgedgourd",
        "sound": "ridgedgourd",
        "index": 28
      },
      {"word": "Chayote", "img": "chayote", "sound": "chayote", "index": 29},
      {
        "word": "Curry Leaves",
        "img": "curryleaves",
        "sound": "curryleaves",
        "index": 30
      },
      {"word": "Scallion", "img": "scallion", "sound": "scallion", "index": 31}
    ]
  },
  "months": {
    "assets": [
      {"word": "January", "img": "jan", "sound": "jan", "index": 0},
      {"word": "February", "img": "feb", "sound": "feb", "index": 1},
      {"word": "March", "img": "mar", "sound": "march", "index": 2},
      {"word": "April", "img": "apr", "sound": "april", "index": 3},
      {"word": "May", "img": "may", "sound": "may", "index": 4},
      {"word": "June", "img": "jun", "sound": "june", "index": 5},
      {"word": "July", "img": "jul", "sound": "july", "index": 6},
      {"word": "August", "img": "aug", "sound": "aug", "index": 7},
      {"word": "September", "img": "sep", "sound": "sep", "index": 8},
      {"word": "October", "img": "oct", "sound": "oct", "index": 9},
      {"word": "November", "img": "nov", "sound": "nov", "index": 10},
      {"word": "December", "img": "dec", "sound": "dec", "index": 11}
    ]
  },
  "days": {
    "assets": [
      {"word": "Sunday", "img": "sunday", "sound": "sunday", "index": 0},
      {"word": "Monday", "img": "mon", "sound": "mon", "index": 1},
      {"word": "Tuesday", "img": "tue", "sound": "tue", "index": 2},
      {"word": "Wednesday", "img": "wed", "sound": "wed", "index": 3},
      {"word": "Thursday", "img": "thu", "sound": "thu", "index": 4},
      {"word": "Friday", "img": "fri", "sound": "fri", "index": 5},
      {"word": "Saturday", "img": "sat", "sound": "sat", "index": 6}
    ]
  },
  "numbers": {
    "assets": [
      {"word": "One", "img": "one", "sound": "one", "index": 0},
      {"word": "Two", "img": "two", "sound": "two", "index": 1},
      {"word": "Three", "img": "three", "sound": "three", "index": 2},
      {"word": "Four", "img": "four", "sound": "four", "index": 3},
      {"word": "Five", "img": "five", "sound": "five", "index": 4},
      {"word": "Six", "img": "six", "sound": "six", "index": 5},
      {"word": "Seven", "img": "seven", "sound": "seven", "index": 6},
      {"word": "Eight", "img": "eight", "sound": "eight", "index": 7},
      {"word": "Nine", "img": "nine", "sound": "nine", "index": 8},
      {"word": "Ten", "img": "ten", "sound": "ten", "index": 9},
      {"word": "Eleven", "img": "eleven", "sound": "eleven", "index": 10},
      {"word": "Twelve", "img": "twelve", "sound": "twelve", "index": 11},
      {"word": "Thirteen", "img": "thirteen", "sound": "thirteen", "index": 12},
      {"word": "Fourteen", "img": "fourteen", "sound": "fourteen", "index": 13},
      {"word": "Fifteen", "img": "fifteen", "sound": "fifteen", "index": 14},
      {"word": "Sixteen", "img": "sixteen", "sound": "sixteen", "index": 15},
      {
        "word": "Seventeen",
        "img": "seventeen",
        "sound": "seventeen",
        "index": 16
      },
      {"word": "Eighteen", "img": "eighteen", "sound": "eighteen", "index": 17},
      {"word": "Nineteen", "img": "nineteen", "sound": "nineteen", "index": 18},
      {"word": "Twenty", "img": "twenty", "sound": "twenty", "index": 19}
    ]
  },
  "solarsystem": {
    "assets": [
      {
        "word": "Solar System",
        "img": "solar_title",
        "sound": "solar_title",
        "index": 0
      },
      {"word": "Mercury", "img": "mercury", "sound": "mercury", "index": 1},
      {"word": "Venus", "img": "venus", "sound": "venus", "index": 2},
      {"word": "Earth", "img": "earth1", "sound": "earth", "index": 3},
      {"word": "Mars", "img": "mars", "sound": "mars", "index": 4},
      {"word": "Jupiter", "img": "jupiter", "sound": "jupiter", "index": 5},
      {"word": "Saturn", "img": "saturn", "sound": "saturn", "index": 6},
      {"word": "Uranus", "img": "uranus", "sound": "uranus", "index": 7},
      {"word": "Neptune", "img": "neptune", "sound": "neptune", "index": 8}
    ]
  },
  "bodyparts": {
    "assets": [
      {"word": "Body Parts", "img": "body", "sound": "body", "index": 0},
      {"word": "Head", "img": "head", "sound": "head", "index": 1},
      {"word": "Forehead", "img": "forehead", "sound": "forehead", "index": 2},
      {"word": "Eyes", "img": "eyes1", "sound": "eyes", "index": 3},
      {"word": "Ears", "img": "ears1", "sound": "ears", "index": 4},
      {"word": "Nose", "img": "nose1", "sound": "nose", "index": 5},
      {"word": "Mouth", "img": "mouth", "sound": "mouth", "index": 6},
      {"word": "Teeth", "img": "teeth", "sound": "teeth", "index": 7},
      {"word": "Tongue", "img": "tongue", "sound": "tongue", "index": 8},
      {"word": "Cheek", "img": "cheek", "sound": "cheek", "index": 9},
      {"word": "Chin", "img": "chin", "sound": "chin", "index": 10},
      {"word": "Neck", "img": "neck", "sound": "neck", "index": 11},
      {"word": "Chest", "img": "chest", "sound": "chest", "index": 12},
      {"word": "Stomach", "img": "stomach", "sound": "stomach", "index": 13},
      {"word": "Elbow", "img": "elbow", "sound": "elbow", "index": 14},
      {"word": "Arm", "img": "arm", "sound": "arm", "index": 15},
      {"word": "Wrist", "img": "wrist", "sound": "wrist", "index": 16},
      {"word": "Fingers", "img": "fingers1", "sound": "fingers", "index": 17},
      {"word": "Thigh", "img": "thigh", "sound": "thigh", "index": 18},
      {"word": "Knee", "img": "knee1", "sound": "knee", "index": 19},
      {"word": "Leg", "img": "leg", "sound": "leg", "index": 20},
      {"word": "Ankle", "img": "ankle", "sound": "ankle", "index": 21},
      {"word": "Foot", "img": "foot", "sound": "foot", "index": 22},
      {"word": "Toes", "img": "toes", "sound": "toes", "index": 23}
    ]
  },
  "goodhabits": {
    "assets": [
      {"word": "Good Habits", "img": "goodhabits", "sound": "", "index": 0},
      {
        "word": "Early to bed and early to rise",
        "img": "1gh",
        "sound": "",
        "index": 1
      },
      {
        "word": "Brush your teeth twice a day",
        "img": "2gh",
        "sound": "",
        "index": 2
      },
      {"word": "Go to toilet regularly", "img": "3gh", "sound": "", "index": 3},
      {
        "word": "Wash your hands properly every time after using washroom",
        "img": "4gh",
        "sound": "",
        "index": 4
      },
      {
        "word": "A bath in the morning is really good",
        "img": "5gh",
        "sound": "",
        "index": 5
      },
      {
        "word": "Say your prayers every morning",
        "img": "6gh",
        "sound": "",
        "index": 6
      },
      {"word": "Comb your hair neatly", "img": "7gh", "sound": "", "index": 7},
      {
        "word": "Wear clean clothes and keep them clean",
        "img": "8gh",
        "sound": "",
        "index": 8
      },
      {
        "word": "Take your breakfast on time",
        "img": "9gh",
        "sound": "",
        "index": 9
      },
      {"word": "Go to school on time", "img": "10gh", "sound": "", "index": 10},
      {
        "word": "Give respect to your teacher",
        "img": "11gh",
        "sound": "",
        "index": 11
      },
      {
        "word": "Do your homework regularly",
        "img": "12gh",
        "sound": "",
        "index": 12
      },
      {
        "word": "Be attentive in the class",
        "img": "13gh",
        "sound": "",
        "index": 13
      },
      {"word": "Obey your elders", "img": "14gh", "sound": "", "index": 14},
      {
        "word": "Pay attention to your studies",
        "img": "15gh",
        "sound": "",
        "index": 15
      },
      {
        "word": "Play only when homework is done",
        "img": "16gh",
        "sound": "",
        "index": 16
      },
      {
        "word": "Wash your hands before and after eating",
        "img": "17gh",
        "sound": "",
        "index": 17
      },
      {
        "word": "Trim your nails every week",
        "img": "18gh",
        "sound": "",
        "index": 18
      },
      {
        "word": "Throw litter into the dusbin",
        "img": "19gh",
        "sound": "",
        "index": 19
      },
      {"word": "Do not tease others", "img": "20gh", "sound": "", "index": 20},
      {
        "word": "Don't sit too close to the television",
        "img": "21gh",
        "sound": "",
        "index": 21
      },
      {
        "word": "Take care of all your belongings",
        "img": "22gh",
        "sound": "",
        "index": 22
      },
      {"word": "Keep your room clean", "img": "23gh", "sound": "", "index": 23},
      {
        "word": "Put away your toys after playtime",
        "img": "24gh",
        "sound": "",
        "index": 24
      },
      {
        "word": "Save some of your pocket money",
        "img": "25gh",
        "sound": "",
        "index": 25
      },
      {"word": "Save the water", "img": "26gh", "sound": "", "index": 26},
      {
        "word": "Polish your shoes daily",
        "img": "27gh",
        "sound": "",
        "index": 27
      },
      {
        "word": "Don't spit in the public place",
        "img": "28gh",
        "sound": "",
        "index": 28
      },
      {
        "word": "Don't play with mobiles for long time",
        "img": "29gh",
        "sound": "",
        "index": 29
      },
      {
        "word": "Cover your nose while sneezing",
        "img": "30gh",
        "sound": "",
        "index": 30
      }
    ]
  },
  "interestingfacts": {
    "assets": [
      {
        "word": "A cheetah can run at a speed of 76km per hour",
        "img": "1",
        "sound": "",
        "index": 0
      },
      {
        "word": "A full grown bear can run as fast as a horse",
        "img": "2",
        "sound": "",
        "index": 1
      },
      {
        "word": "Tsunami travels as fast as jetplanes",
        "img": "3",
        "sound": "",
        "index": 2
      },
      {"word": "", "img": "setfacts2", "sound": "", "index": 3},
      {
        "word": "Penguins can convert salt water to fresh water",
        "img": "4",
        "sound": "",
        "index": 4
      },
      {
        "word": "The speed of a typical raindrop is 17 miles per hour",
        "img": "5",
        "sound": "",
        "index": 5
      },
      {
        "word": "Only pigs and dogs can get the actual taste of water",
        "img": "6",
        "sound": "",
        "index": 6
      },
      {"word": "", "img": "setfacts3", "sound": "", "index": 7},
      {
        "word": "The pupils of goats are rectangular",
        "img": "7",
        "sound": "",
        "index": 8
      },
      {
        "word": "An Ostrich eyes is bigger than it's own brain",
        "img": "8",
        "sound": "",
        "index": 9
      },
      {"word": "Cats have three eyelids", "img": "9", "sound": "", "index": 10},
      {"word": "", "img": "setfacts4", "sound": "", "index": 11},
      {
        "word": "A rat can last longer without water than a camel",
        "img": "10",
        "sound": "",
        "index": 12
      },
      {
        "word": "Dragon flies have life span of about one day",
        "img": "11",
        "sound": "",
        "index": 13
      },
      {
        "word": "The average cow spends 13 hours a day lying down",
        "img": "12",
        "sound": "",
        "index": 14
      },
      {"word": "", "img": "setfacts5", "sound": "", "index": 15},
      {
        "word": "Dolphins sleep with one eye open",
        "img": "13",
        "sound": "",
        "index": 16
      },
      {
        "word":
            "Sharks can never get sick they are immune to all known diseases",
        "img": "14",
        "sound": "",
        "index": 17
      },
      {
        "word": "A shark is the only fish that can blink with both eyes",
        "img": "15",
        "sound": "",
        "index": 18
      },
      {"word": "", "img": "setfacts6", "sound": "", "index": 19},
      {"word": "Kangaroos can't walk", "img": "16", "sound": "", "index": 20},
      {
        "word": "There are more chicken than people in the world",
        "img": "17",
        "sound": "",
        "index": 21
      },
      {
        "word": "In Australia there are twice as many kangaroos as people",
        "img": "18",
        "sound": "",
        "index": 22
      },
      {"word": "", "img": "setfacts7", "sound": "", "index": 23},
      {
        "word": "An ant can lift 50 times its own body weight",
        "img": "19",
        "sound": "",
        "index": 24
      },
      {"word": "Only female bees work", "img": "20", "sound": "", "index": 25},
      {
        "word": "Female ants are the ones that do all the work",
        "img": "21",
        "sound": "",
        "index": 26
      },
      {"word": "", "img": "setfacts8", "sound": "", "index": 27},
      {
        "word": "A giraffe can walk longer than a camel without water",
        "img": "22",
        "sound": "",
        "index": 28
      },
      {"word": "Ants don't sleep", "img": "23", "sound": "", "index": 29},
      {
        "word": "Giraffes sleep only about 20 minutes a day",
        "img": "24",
        "sound": "",
        "index": 30
      },
      {"word": "", "img": "setfacts9", "sound": "", "index": 31},
      {
        "word":
            "Mosquito's are attracted to people who have recently eaten bananas",
        "img": "25",
        "sound": "",
        "index": 32
      },
      {
        "word": "The coconut is the largest seed in the world",
        "img": "26",
        "sound": "",
        "index": 33
      },
      {
        "word": "There are more than 10,000 varieties of tomatoes in the world",
        "img": "27",
        "sound": "",
        "index": 34
      },
      {"word": "", "img": "setfacts10", "sound": "", "index": 35},
      {
        "word":
            "Donkey eyes are placed in such a way that it can see all four of it's feet at all times",
        "img": "28",
        "sound": "",
        "index": 36
      },
      {
        "word": "Butterflies taste with their feet",
        "img": "29",
        "sound": "",
        "index": 37
      },
      {
        "word": "Flamingos urinate on their legs to cool themselves off",
        "img": "30",
        "sound": "",
        "index": 38
      },
      {"word": "", "img": "setfacts11", "sound": "", "index": 39},
      {
        "word": "Elephant is the only mammal that can't jump",
        "img": "31",
        "sound": "",
        "index": 40
      },
      {
        "word": "Giraffes are unable to cough",
        "img": "32",
        "sound": "",
        "index": 41
      },
      {
        "word": "Tigers do not eat an animal that is killed by a lightning",
        "img": "33",
        "sound": "",
        "index": 42
      },
      {"word": "", "img": "setfacts12", "sound": "", "index": 43},
      {
        "word": "There are no ants in iceland, Antarctica and greenland",
        "img": "34",
        "sound": "",
        "index": 44
      },
      {
        "word":
            "If a rhino has two horns its from India; If it has one horn its from Africa",
        "img": "35",
        "sound": "",
        "index": 45
      },
      {
        "word": "There are no tigers in the world with same stripes",
        "img": "36",
        "sound": "",
        "index": 46
      },
      {"word": "", "img": "setfacts13", "sound": "", "index": 47},
      {
        "word": "A bamboo can grow nearly a meter in one day",
        "img": "37",
        "sound": "",
        "index": 48
      },
      {
        "word": "Human thigh bones are stronger than concrete",
        "img": "38",
        "sound": "",
        "index": 49
      },
      {
        "word": "The sun is 330,330 times larger than the earth",
        "img": "39",
        "sound": "",
        "index": 50
      },
      {"word": "", "img": "setfacts14", "sound": "", "index": 51},
      {
        "word": "A Cockroach can live several weeks with its head cut off",
        "img": "40",
        "sound": "",
        "index": 52
      },
      {
        "word": "An olive tree can live up to 1,500 years",
        "img": "41",
        "sound": "",
        "index": 53
      },
      {
        "word":
            "Months that being on a Sunday will always have a Friday the 13th",
        "img": "42",
        "sound": "",
        "index": 54
      },
      {"word": "", "img": "setfacts15", "sound": "", "index": 55},
      {
        "word": "Colgate is the first tooth powder that came in jar",
        "img": "43",
        "sound": "",
        "index": 56
      },
      {
        "word": "A giraffe can clean its ears with its 21 inch long tongue",
        "img": "44",
        "sound": "",
        "index": 57
      },
      {
        "word": "Astronauts get taller when they are in space",
        "img": "45",
        "sound": "",
        "index": 58
      },
      {"word": "", "img": "setfacts16", "sound": "", "index": 59},
      {
        "word": "Your heart beats over 100,000 times a day",
        "img": "46",
        "sound": "",
        "index": 60
      },
      {"word": "Slugs have four noses", "img": "47", "sound": "", "index": 61},
      {
        "word": "octopus has three hearts",
        "img": "48",
        "sound": "",
        "index": 62
      },
      {"word": "", "img": "setfacts1", "sound": "", "index": 63},
      {
        "word": "A gold fish has a memory span of about 3seconds",
        "img": "49",
        "sound": "",
        "index": 63
      },
      {
        "word": "Cows Sweat through their noses",
        "img": "50",
        "sound": "",
        "index": 64
      },
      {
        "word":
            "A volcano has enough power to shoot ash as high as 59km into the atmosphere",
        "img": "51",
        "sound": "",
        "index": 65
      },
      {"word": "", "img": "setfacts1", "sound": "", "index": 66}
    ]
  },
  "birds": {
    "assets": [
      {
        "word": "Crow",
        "img": "crow",
        "sound": "crow",
        "index": 0,
        "progress": 0
      },
      {
        "word": "Peacock",
        "img": "peacock",
        "sound": "peacock",
        "index": 1,
        "progress": 5
      },
      {
        "word": "Parrot",
        "img": "parrot",
        "sound": "parrot",
        "index": 2,
        "progress": 10
      },
      {
        "word": "Red Parrot",
        "img": "brd_redparrot",
        "sound": "brd_redparrot",
        "index": 3,
        "progress": 15
      },
      {
        "word": "Swan",
        "img": "brd_swan",
        "sound": "brd_swan",
        "index": 4,
        "progress": 20
      },
      {"word": "Hen", "img": "hen", "sound": "hen", "index": 5, "progress": 25},
      {
        "word": "Cuckoo",
        "img": "brd_cuckoo",
        "sound": "brd_cuckoo",
        "index": 6,
        "progress": 30
      },
      {
        "word": "Duck",
        "img": "duck",
        "sound": "duck",
        "index": 7,
        "progress": 35
      },
      {
        "word": "Eagle",
        "img": "eagle",
        "sound": "eagle",
        "index": 8,
        "progress": 40
      },
      {
        "word": "Rooster",
        "img": "brd_rooster",
        "sound": "brd_rooster",
        "index": 9,
        "progress": 45
      },
      {
        "word": "Woodpecker",
        "img": "woodpecker",
        "sound": "woodpecker",
        "index": 10,
        "progress": 50
      },
      {
        "word": "Ostrich",
        "img": "ostrich",
        "sound": "ostrich",
        "index": 11,
        "progress": 55
      },
      {
        "word": "Crane",
        "img": "brd_crane",
        "sound": "brd_crane",
        "index": 12,
        "progress": 60
      },
      {
        "word": "Kingfisher",
        "img": "brd_kingfisher",
        "sound": "brd_kingfisher",
        "index": 13,
        "progress": 65
      },
      {
        "word": "Owl",
        "img": "owl",
        "sound": "owl",
        "index": 14,
        "progress": 70
      },
      {
        "word": "Pelican",
        "img": "brd_pelican",
        "sound": "brd_pelican",
        "index": 15,
        "progress": 75
      },
      {
        "word": "Pigeon",
        "img": "brd_pigeon",
        "sound": "brd_pigeon",
        "index": 16,
        "progress": 80
      },
      {
        "word": "Turkey",
        "img": "brd_turkey",
        "sound": "brd_turkey",
        "index": 17,
        "progress": 85
      },
      {
        "word": "Stork",
        "img": "brd_stork",
        "sound": "brd_stork",
        "index": 18,
        "progress": 90
      },
      {
        "word": "Seagull",
        "img": "brd_seagull",
        "sound": "brd_seagull",
        "index": 19,
        "progress": 95
      },
      {
        "word": "Sparrow",
        "img": "brd_sparrow",
        "sound": "brd_sparrow",
        "index": 20,
        "progress": 100
      }
    ]
  },
  "places": {
    "assets": [
      {
        "word": "House",
        "img": "pls_house",
        "sound": "house",
        "index": 0,
        "progress": 0
      },
      {
        "word": "School",
        "img": "pls_school",
        "sound": "pls_school",
        "index": 1,
        "progress": 4
      },
      {
        "word": "Library",
        "img": "pls_library",
        "sound": "pls_library",
        "index": 2,
        "progress": 72
      },
      {
        "word": "Laboratory",
        "img": "pls_laboratory",
        "sound": "pls_laboratory",
        "index": 3,
        "progress": 92
      },
      {
        "word": "Bus Stop",
        "img": "pls_busstop",
        "sound": "pls_busstop",
        "index": 4,
        "progress": 24
      },
      {
        "word": "Railway Station",
        "img": "pls_railwaystation",
        "sound": "pls_railwaystation",
        "index": 5,
        "progress": 40
      },
      {
        "word": "Airport",
        "img": "pls_airport",
        "sound": "pls_airport",
        "index": 6,
        "progress": 60
      },
      {
        "word": "Temple",
        "img": "pls_temple",
        "sound": "pls_temple",
        "index": 7,
        "progress": 28
      },
      {
        "word": "Mosque",
        "img": "pls_mosque",
        "sound": "pls_mosque",
        "index": 8,
        "progress": 32
      },
      {
        "word": "Chruch",
        "img": "pls_chruch",
        "sound": "pls_chruch",
        "index": 9,
        "progress": 36
      },
      {
        "word": "Police Station",
        "img": "pls_policestation",
        "sound": "pls_policestation",
        "index": 10,
        "progress": 48
      },
      {
        "word": "Fire Station",
        "img": "pls_firestation",
        "sound": "pls_firestation",
        "index": 11,
        "progress": 52
      },
      {
        "word": "Post Office",
        "img": "pls_postoffice",
        "sound": "pls_postoffice",
        "index": 12,
        "progress": 56
      },
      {
        "word": "Beach",
        "img": "pls_beach",
        "sound": "pls_beach",
        "index": 13,
        "progress": 16
      },
      {
        "word": "Theme Park",
        "img": "pls_themepark",
        "sound": "pls_themepark",
        "index": 14,
        "progress": 76
      },
      {
        "word": "Zoo",
        "img": "pls_zoo",
        "sound": "pls_zoo",
        "index": 15,
        "progress": 84
      },
      {
        "word": "Aquarium",
        "img": "pls_aquarium",
        "sound": "pls_aquarium",
        "index": 16,
        "progress": 80
      },
      {
        "word": "Museum",
        "img": "pls_museum",
        "sound": "pls_museum",
        "index": 17,
        "progress": 88
      },
      {
        "word": "Harbour",
        "img": "pls_harbour",
        "sound": "pls_harbour",
        "index": 18,
        "progress": 100
      },
      {
        "word": "Cinema Theater",
        "img": "pls_cinematheater",
        "sound": "pls_cinematheater",
        "index": 19,
        "progress": 8
      },
      {
        "word": "Restaurant",
        "img": "pls_restaurant",
        "sound": "pls_restaurant",
        "index": 20,
        "progress": 12
      },
      {
        "word": "Hospital",
        "img": "pls_hospital",
        "sound": "pls_hospital",
        "index": 21,
        "progress": 20
      },
      {
        "word": "Fuel Station",
        "img": "pls_fuelstation",
        "sound": "pls_fuelstation",
        "index": 22,
        "progress": 44
      },
      {
        "word": "Power Plant",
        "img": "pls_powerplant",
        "sound": "pls_powerplant",
        "index": 23,
        "progress": 64
      },
      {
        "word": "Stadium",
        "img": "pls_stadium",
        "sound": "pls_stadium",
        "index": 24,
        "progress": 68
      }
    ]
  },
  "professions": {
    "assets": [
      {
        "word": "Teacher",
        "img": "pros_teacher",
        "sound": "pros_teacher",
        "index": 0,
        "progress": 0
      },
      {
        "word": "Doctor",
        "img": "pros_doctor",
        "sound": "pros_doctor",
        "index": 1,
        "progress": 4
      },
      {
        "word": "Nurse",
        "img": "pros_nurse",
        "sound": "pros_nurse",
        "index": 2,
        "progress": 8
      },
      {
        "word": "Veterinary Doctor",
        "img": "pros_veterinarydoctor",
        "sound": "pros_veterinarydoctor",
        "index": 3,
        "progress": 12
      },
      {
        "word": "Scientist",
        "img": "pros_scientist",
        "sound": "pros_scientist",
        "index": 4,
        "progress": 24
      },
      {
        "word": "Astronaut",
        "img": "astronaut",
        "sound": "astronaut",
        "index": 5,
        "progress": 28
      },
      {
        "word": "Fisherman",
        "img": "pros_fisherman",
        "sound": "pros_fisherman",
        "index": 6,
        "progress": 60
      },
      {
        "word": "Fireman",
        "img": "pros_fireman",
        "sound": "pros_fireman",
        "index": 7,
        "progress": 64
      },
      {
        "word": "Postman",
        "img": "pros_postman",
        "sound": "pros_postman",
        "index": 8,
        "progress": 68
      },
      {
        "word": "Delivery Boy",
        "img": "pros_deliveryboy",
        "sound": "pros_deliveryboy",
        "index": 9,
        "progress": 72
      },
      {
        "word": "Captain",
        "img": "pros_captain",
        "sound": "pros_captain",
        "index": 10,
        "progress": 40
      },
      {
        "word": "Soldier",
        "img": "pros_soldier",
        "sound": "pros_soldier",
        "index": 11,
        "progress": 44
      },
      {
        "word": "Pilot",
        "img": "pros_pilot",
        "sound": "pros_pilot",
        "index": 12,
        "progress": 48
      },
      {
        "word": "Driver",
        "img": "pros_driver",
        "sound": "pros_driver",
        "index": 13,
        "progress": 52
      },
      {
        "word": "Mechanic",
        "img": "pros_mechanic",
        "sound": "pros_mechanic",
        "index": 14,
        "progress": 56
      },
      {
        "word": "Artist",
        "img": "pros_artist",
        "sound": "pros_artist",
        "index": 15,
        "progress": 76
      },
      {
        "word": "Painter",
        "img": "pros_painter",
        "sound": "pros_painter",
        "index": 16,
        "progress": 80
      },
      {
        "word": "Mason",
        "img": "pros_mason",
        "sound": "pros_mason",
        "index": 17,
        "progress": 84
      },
      {
        "word": "Carpenter",
        "img": "pros_carpenter",
        "sound": "pros_carpenter",
        "index": 18,
        "progress": 88
      },
      {
        "word": "Potter",
        "img": "pros_potter",
        "sound": "pros_potter",
        "index": 19,
        "progress": 92
      },
      {
        "word": "Sculptor",
        "img": "pros_sculptor",
        "sound": "pros_sculptor",
        "index": 20,
        "progress": 100
      },
      {
        "word": "Baker",
        "img": "pros_baker",
        "sound": "pros_baker",
        "index": 21,
        "progress": 32
      },
      {
        "word": "Chef",
        "img": "pros_chef",
        "sound": "pros_chef",
        "index": 22,
        "progress": 36
      },
      {
        "word": "Joker",
        "img": "pros_joker",
        "sound": "pros_joker",
        "index": 23,
        "progress": 16
      },
      {
        "word": "Magician",
        "img": "pros_magician",
        "sound": "pros_magician",
        "index": 24,
        "progress": 20
      }
    ]
  }
};


