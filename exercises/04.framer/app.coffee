screenPadding = 20

box.draggable = true
box.draggable.vertical = false
box.draggable.constraints =
	x: screenPadding
	width: Screen.width - screenPadding * 2
	
box.onDragStart ->
	box.animate
		scale: 1.2
		rotation: 15
		options: 
			time: 0.3

box.onDragEnd ->
	box.animate
		scale: 1
		rotation: 0
		options: 
			time: 0.3