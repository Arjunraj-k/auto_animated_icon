### Basic

	class MenuCloseIcon extends StatefulWidget {
		const MenuCloseIcon({
			Key key,
		}) : super(key: key);

		@override
		_MenuCloseIconState createState() => _MenuCloseIconState();
	}

	class _MenuCloseIconState extends State<MenuCloseIcon> {

		IconState _iconState = IconState.first;

		bool _isPressed = false;

		@override
		Widget build(BuildContext context) {
			return AutoAnimatedIcon(
			iconState: _iconState,
			icon: AnimatedIcons.menu_close,
			onPressed: () {
				setState(() {
				_isPressed = !_isPressed;
				if(_isPressed)
					_iconState  = IconState.second;
				else
					_iconState = IconState.first;
				});
				log("checking");
			},
			);
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
