# Examples
  
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