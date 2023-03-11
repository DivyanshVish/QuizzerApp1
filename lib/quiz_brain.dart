import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionbank = [
    Question(q: "The atomic number for lithium is 17", a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: "The black box in a plane is Black", a: false),
    Question(q: "Alliumphobia is fear of Garlic", a: true),
    Question(
        q: "Sex Education star Gillian Anderson was born in Chicago, Illinois",
        a: true),
    Question(q: "Prince Harry is taller than Prince Willian", a: false),
    Question(q: "The star sign Aquarius is represented by a tiger", a: false),
    Question(q: "Meryl Streep has won two Academy Awards", a: false),
    Question(q: "Marrakesh is the capital of Morocco", a: false),
    Question(
        q: "Idina Menzel sings 'let it go' 20 times in 'Let It Go' from Frozen",
        a: false),
    Question(
        q: "Waterloo has the greatest number of tube platforms in London",
        a: true),
    Question(q: "M&M stands for Mars and Moordale", a: false),
    Question(q: "In a deck of cards, the king has a mustache", a: false),
    Question(
        q: "In the English language there is no word that rhymes with orange.",
        a: true),
    Question(
        q: "Sex and the City star Kim Cattrall is from California.", a: false),
    Question(
        q: "The United States has the longest coastline in the world",
        a: false),
    Question(q: "You can sneeze during your sleep.", a: false),
    Question(
        q: "Before becoming queen, Queen Elizabeth II trained as a mechanic.",
        a: true),
    Question(
        q: "Victoria Beckham had a cameo appearance in the original Sex and the City series.",
        a: false),
    Question(q: "Rihanna was born in the Bahamas", a: false),
    Question(
        q: "The first music video to be played on MTV was Video Killed The Radio Star by The Buggles in 1981",
        a: true),
    Question(q: "The first animal sent into space was a monkey.", a: false),
    Question(
        q: "Singer Billie Eilish’s full name is Billie Eilish Pirate Baird O’Connell.",
        a: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionbank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionbank[_questionNumber].questionText;
  }

  bool getAnswerText() {
    return _questionbank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionbank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

// Question(q:"", a:),
//for adding more question
