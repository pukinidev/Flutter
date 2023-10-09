# Basics - Dart & Flutter #2

## Widget Lifecycle Methods

There are 3 widget lifecycle methods

- **initState()**: Executed by flutter when the StatefulWidget's State object is initialized
    
    ```dart
    /*
    	Example:
    	We want to change from one screen to another. 
    	In this case we can use initState()
    */
    class _QuizState extends State<Quiz> {
    Widget? activeScreen;
    
    	// this method runs before build()
      @override
      void initState() {
        activeScreen = QuizColumn(switchScreen);
        super.initState();
      }
    
      void switchScreen() {
        setState(() {
          activeScreen = const QuestionsScreen();
        });
      }
    
    	//...method build() and more code..
    }
    ```
    
- **build()**: Executed by flutter when the Widgets is built for the first time and after **setState()** was called.
- **dispose()**:Executed by flut ter right before the Widget will be deleted

## Changing from one screen to another - Example

The code above shows 3 ways of changing to one screen to another. This example was taken from a tutorial about a quiz app.

```dart

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {

    // Alternative 1
    
    Widget? activeScreen;

    // this method runs before build()
    @override
    void initState() {
      activeScreen = QuizColumn(switchScreen);
      super.initState();
    }

    void switchScreen() {
      setState(() {
        activeScreen = const QuestionsScreen();
      });
    }

    //asign activeScreen to Container child
    

    //Alternative #2
    
    final screenWidget = activeScreen == 'start-screen'
              ? QuizColumn(switchScreen)
              : const QuestionsScreen();
    /* asign the ternary expresion that is stored in a 
				variable called screenWidget to the Container child. 
		*/
		

		//Alternative #3
		child: activeScreen == 'start-screen'
              ? QuizColumn(switchScreen)
              : const QuestionsScreen();

		// asign the ternary expresion directly into the Container child
		

		// Alternative 4
    
    Widget screenWidget = QuizColumn(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }

		/* do an if statement to change the screen if the activeScreen
				value is equal to 'questions-screen'
    */
    // here goes return MaterialApp, in this case!
}
```

## Spread Operator (...) and Map

We use the spread operator when we want to map information from list. For example, I have a list of answers for a question and i want to map them in order to avoid repeating the creation of the widget many times

```dart
...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, action: () {});
}),
```

The function map creates a List inside a List of AnswerButton but Dart doesn’t understand that we are giving him the widgets because they are inside a list that is contained into another list. So the spread operator pop the values from the list that is contained and put them in child list one by one separated by comas in order to make Dart urderstand that they are widgets.

## Custom Fonts

To install custom fonts from google we need to use this comand and then import the package into the file we want to use the custom font

```dart
flutter pub add google_fonts
```

This command add google_fonts to the pubspec.yaml dependencies.

To import the package we use the following command

```dart
import 'package:google_fonts/google_fonts.dart';
```

## Classes 

In Dart we can create objects just like in Java.
For example,
```dart

class Car {

  // Constructor
  Car({
    required this.modelName,
    required this.year
  })

  /*
  In this case we create a class
  using named parameters. We can also use
  positional arguments. 
  */

  // Variables from the class
  final String modelName;
  final DateTime year; 

}
```

# Assign automatic ID

In dart if we want to give an item a unique id we can use the Uuid library.
To install the library we need to run the next command.

```dart
flutter pub add uuid
```

A example using the library,

```dart
import 'package:uuid/uuid.dart';

const uuid = const Uuid();

class Expense {
  Expense({
   required this.title,
   required this.amount, 
   required this.date
  }) : id = uuid.v4(); // Initialize the id 

  /*
  After the constructor is defined we can initialize 
  values using : and then specifyng which variables
  we want to initialize with custom values.
  */

  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
```





