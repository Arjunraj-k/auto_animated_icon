### Basic

	   class  ListViewIcon  extends  StatefulWidget {
		   const  ListViewIcon({Key key}) :  super(key: key);
	   
		   @override
		   _ListViewIconState  createState() =>  _ListViewIconState();
	   }

  

	   class  _ListViewIconState  extends  State<ListViewIcon> {
	       IconState _iconState =  IconState.first;
	       bool _isPressed =  false;

	       @override

	       Widget  build(BuildContext context) {
		       return  AutoAnimatedIcon(
				   iconState: _iconState,
				   icon:  AnimatedIcons.list_view,
				   onPressed: () {
					   setState(() {
						   _isPressed =  !_isPressed;
						   if(_isPressed)
							   _iconState =  IconState.second;
						   else
							   _iconState =  IconState.first;
							   });
					   log("Button Pressed");

				   });
		   }
	   }

  

### With separate toolips

	   AutoAnimatedIcon(
		  icon: AnimatedIcons.event_add,
		  onPressed: () {},
		  firstToolip: "Event",
		  secondToolip: "Add",
	   );

In this example the widget will show the firstToolip for the first icon and the secondToolip for second icon.
