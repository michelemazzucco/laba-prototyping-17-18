flow = new FlowComponent
flow.showNext($01)

button_01.onClick (event, layer) ->
	flow.showNext($02)
	button_02.animate
		y: 456
		opacity: 1
		options: 
			time: .5
			delay: .35
			curve: Spring
	header_2.animate
		y: 379
		opacity: 1
		options: 
			time: .5
			delay: .25
			curve: Spring
	robot.animate
		rotation: 0
		opacity: 1
		options: 
			time: .5
			delay: .45
			curve: Spring
			
button_02.onClick (event, layer) ->
	flow.showNext($03)

back_02.onClick (event, layer) ->
	flow.showPrevious()		

back_03.onClick (event, layer) ->
	flow.showPrevious()	

sun.onDoubleTap (event, layer) ->
	flow.showOverlayTop($03)


