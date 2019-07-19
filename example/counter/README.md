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