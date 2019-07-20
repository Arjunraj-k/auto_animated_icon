# auto_animated_icon

  

A Flutter package to simplify the process of creating an AnimatedIcon

  

## Getting Started

  

The **AutoAnimatedIcon** will help you create an [AnimatedIcon](https://api.flutter.dev/flutter/material/AnimatedIcon-class.html) without any hussle. Just create an **AutoAnimatedIcon** widget with the **icon** which is one of the [AnimatedIcons](https://api.flutter.dev/flutter/material/AnimatedIcons-class.html) and an **onPressed** method to do the things you want to do when its pressed.

  

There is an **initialState** property which can be set to either **InitialState.first** or **InitialState.second** to specify which of the icon's state is shown first.

## Usage
  
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

### With separate toolips

    AutoAnimatedIcon(
        icon: AnimatedIcons.event_add,
        onPressed: () {},
        firstToolip: "Event",
        secondToolip: "Add",
    	);
In this example the widget will show the firstToolip for the first icon and the secondToolip for second icon.

### For Further Customization 
For more customization options consider [IconButton](https://api.flutter.dev/flutter/material/IconButton-class.html)'s and [AnimatedIcon](https://api.flutter.dev/flutter/material/AnimatedIcon-class.html)'s  properties which are directly available to use in AutoAnimatedIcon.

### Examples
 [Counter](https://github.com/Arjunraj-k/auto_animated_icon/tree/master/example/counter) Which shows three types of AutoAnimatedIcons on the AppBar.

***Feel free to let me know of any issues or suggestions.***

### Contributions
Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/Arjunraj-k/auto_animated_icon/issues).
If you fixed a bug or implemented a new feature, please send a [pull request](https://github.com/Arjunraj-k/auto_animated_icon/pulls).

### Maintainers
[Arjunraj Kokkadan](https://github.com/Arjunraj-k)

For help getting started with Flutter, view the [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.
