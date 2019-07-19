# auto_animated_icon

  

A Flutter package to simlify the process of creating an AnimatedIcon

  

## Getting Started

  

The **AutoAnimatedIcon** will help you create an [AnimatedIcon](https://api.flutter.dev/flutter/material/AnimatedIcon-class.html) without any hussle. Just create an **AutoAnimatedIcon** widget with the **icon** which is one of the [AnimatedIcons](https://api.flutter.dev/flutter/material/AnimatedIcons-class.html) and an **onPressed** method to do the things you want to do when its pressed.

  

There is an **initialState** property which can be set to either **InitialState.first** or **InitialState.second** to specify which of the icon's state is shown first.

## Example
  
### Basic
    AutoAnimatedIcon(
    onPressed: (){
		print("OnPressed Works");
		},
	icon:  AnimatedIcons.menu_close,
	);

### With initialState

    AutoAnimatedIcon(
    onPressed: (){
		print("OnPressed Works");
		},
	icon:  AnimatedIcons.menu_close,
	initialState: InitialState.second,
	);
In this example the widget will show the close button initially.

### For Further Customization 
For more customization options consider [IconButton](https://api.flutter.dev/flutter/material/IconButton-class.html)'s and [AnimatedIcon](https://api.flutter.dev/flutter/material/AnimatedIcon-class.html)'s  properties which are directly available to use in AutoAnimatedIcon.

***Feel free to let me know of any issues or suggestions.***

For help getting started with Flutter, view the [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.
