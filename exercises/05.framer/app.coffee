scroll = new ScrollComponent
	size: Screen.size
	scrollHorizontal: false

list.parent = scroll.content

$01.states =
	blue:
		backgroundColor: "rgba(39,148,239,0.5)"
	green:
		backgroundColor: "#72D737"

scroll.onScroll ->
	if scroll.scrollY > 75
		$01.stateSwitch('blue')
	if scroll.scrollY < 75
		$01.stateSwitch('green')