# Basics - Dart & Flutter #1

Like in many programming languages in Dart we use the **semicolon** when a code line ends and it also has **variable types**. Dart is a **Object Oriented** programming language just like my dearly friend Java.

## Import Libraries/Features

To import features in Dart we use this syntaxis

```dart
import 'package:flutter/material.dart';
```

## Functions

In Dart you have two kinds of parameters you can accept in functions:

- **Positional**
    
    The position of an argument determines which parameter receives the value
    
    ```dart
     void add(a, b) {
    	 print(a+b);
     }
    
    add(6,12);
    ```
    
    ### Optional Parameters
    
    Positional arguments can be made **optional** by wrapping them with square brackets []
    
    ```dart
    void add(a, [b]) {
    		// code here
    }
    ```
    
    ### Default Values
    
    Also we can assign a **default value** to the optional parameter just like this
    
    ```dart
    void add(a, [b = 2]) {
    		// code here
    }
    ```
    
- **Named**
    
    The name of an argument determines which parameter receives the value
    
    ```dart
    void add({a,b}) {
    	print(a+b);
    }
    
    add(b:12, a:6);
    ```
    
    ### Default Values to Named Parameters
    
    Also we can assign a **default value** to the named parameter just like this
    
    ```dart
    void add({a, b = 5}) {
    	print(a+b);
    }
    
    add(b:12); // Replaces 5 with 12
    ```
    
    ### Named parameters being Required
    
    We can make named parameters required by using required keyword. So the parameters are not optional.
    
    ```dart
    void add({required a, required b}) {
      print(a + b); 
    } // now a and b are required parameters
    ```
    

## Visual Layout

To use the basic visual layout on Dart we use Scaffold() function. When we use Scaffold() it has a body parameter that we should use to enter the widgets we want to use

```dart
void main() {
	runApp(const MaterialApp(home: Scaffold(body: Text('pukini') ,)));
}
```

More about Scaffold() Class [Scaffold class - material library - Dart API (flutter.dev)](https://api.flutter.dev/flutter/material/Scaffold-class.html)

## Wrapping Widgets with + Widgets

When we wrap widgets we construct a ***Widget Tree***. This is commonly used in Dart when for example we want to **Center** a **Text**. In this case we use Text widget and that is wrapped by Center widget.

```dart
Center(child: Text('Pukini'));
```

## Container Widget

The Container Widget is a space where you can add more widgets and add them some decoration. Imagine you create a component that has a text and you want to put the text inside a box with a custom height and width.

![Untitled](https://github.com/pukinidev/Flutter/blob/main/Notes/Images/Basics%20-%20Dart%20%26%20Flutter%20%231/Container.png)

## Creating own Widgets

To create our own Widgets on Flutter we need to use classes so we can make many instances of our widget. This give us the possibility to reduce the code repetition by reusing our widget in many parts of our code.

```dart
class WidgetName extends StatelessWidget {

		const WidgetName({super.key});

		@override //  we are going to be overriting the build function
		Widget build(context) { 
			return const ; // it should return a Widget like a container, text, etc...
		}

}
```

More about Widget Library from flutter [widgets library - Dart API (flutter.dev)](https://api.flutter.dev/flutter/widgets/widgets-library.html#classes)

## **Import files/custom widgets**

To import our custom widgets to a dart file we need to use this syntaxis. This is a good practice when coding.

```dart
import 'package:<project_name>/<widget_name>.dart'
```

## Variables

In dart, we know the type of the variable we are storing. For example

```dart
var startAlignment = Alignment.topLeft;
```

If we stop by the variable name in vscode we should be able to see the variable type just like in the photo above.

![Untitled](https://github.com/pukinidev/Flutter/blob/main/Notes/Images/Basics%20-%20Dart%20%26%20Flutter%20%231/Variables.png)

Also another way to declare variables is by doing this. Here we are making clear what type is the variable we are storing in our app.

```dart
Alignment startAlignment;

startAlignment = Alignment.topLeft;
```

## Type of Functions

There are two type of functions in dart

- Normal: It has a function name
    
    ```dart
    void functionName(parameters) {
    //code goes here
    }
    ```
    
- Anonymous: Doesn’t need a function name
    
    ```dart
    () {
    //code goes here
    }
    ```
    

## Constructor Functions in Classes

Create multiple constructor funtions in widget classes. The basic function constructor receives two colors of type Color and assign the values to  color1 and color2. The purple function constructor doesn’t receive any additional parameters instead it assign the colors we defined in the function to the variables color1 and color2.

```dart
// Class example
class MyWidget extends StatelessWidget {

  const MyWidget(this.color1, this.color2, {super.key}); // basic function constructor 

	const MyWidget.purple({super.key}): // function constructor
	color1 = Colors.deepPurple,
	color2 = Colors.indigo;

	//...widget code
}
//Calling the widget in another file

//1 
MyWidget(
	Color.fromARGB(255, 255, 192, 203),
  Color.fromARGB(255, 230, 230, 250),
) // this call the widget with the basic function constructor

//2
MyWidget.purple(); // this call the widget with the purple function constructor

```

## Stateless vs Stateful Widgets

Sometimes our widgets will need to change state. In this cases we can’t use the Stateless Widget because this widget doesn’t allow us to change the state of a widget meaning it won’t render the new state. That’s why we have to use Stateful Widgets that allow us to change the state of a widget. 

- Stateless Widget - Class
    
    ```dart
    import 'package:flutter/material.dart';
    
    class CustomWidget extends StatelessWidget {
      const CustomWidget({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }
    ```
    
- Stateful Widget - Class
    
    ```dart
    import 'package:flutter/material.dart';
    
    class CustomWidget extends StatefulWidget {
      const CustomWidget({super.key});
    
      @override
      State <CustomWidget> createState() =>  CustomWidgetState();
    }
    
    class CustomWidgetState extends State <CustomWidget> {
    
      void changeState() {
        setState(() {
          // Here we change the state of the widget
        });
      }
    
      @override
      Widget build(BuildContext context) {
        return Container();
      }
    }
    ```
    

Also there are snippets in vscode that create automatically the code for the widget such as: statefulW and statelessW.