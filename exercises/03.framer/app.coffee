box.states =
	active:
		rotation: 0
	deactive:
		opacity: 0.50
		scale: .8
		rotation: 0
	rotate:
		backgroundColor: '#FFF'
		rotation: 45
		scale: 1
		borderRadius: 40
		opacity: 1

box.states.animationOptions =
	time: 0.8
	curve: Spring

button.onClick (event, layer) ->
	box.stateCycle('active', 'deactive', 'rotate')
	
box.onClick (event, layer) ->
	box.stateSwitch('deactive')


