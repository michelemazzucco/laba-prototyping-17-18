Montserrat = Utils.loadWebFont('Montserrat', 700)

Title.animate
	y: 180
	opacity: 1
	options: 
		delay: .5
		time: .8
		curve: Spring

Button.onClick (event, layer) ->
	Title.animate
		y: 120
		opacity: 0
		options: 
			time: .4
			curve: Bezier.easeOut