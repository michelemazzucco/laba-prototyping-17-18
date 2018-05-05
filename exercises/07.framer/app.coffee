{ darkSkyKey } = require 'keys'
Montserrat = Utils.loadWebFont('Montserrat', 600)

# States
brescia.states =
	active:
		opacity: .3
	deactive:
		opacity: 1
		
oslo.states =
	active:
		opacity: .3
	deactive:
		opacity: 1
		
# Functions
getWeather = (location, lang = 'it') ->
	darkSkyURI = encodeURIComponent("https://api.darksky.net/forecast/#{darkSkyKey}/#{location}?units=ca&lang=#{lang}")
	data = Utils.domLoadJSONSync "http://cors-proxy.htmldriven.com/?url=#{darkSkyURI}"
	return JSON.parse data.body

getIcon = (type) ->
	switch type
		when 'clear-day' then return '☀️'
		when 'clear-night' then return '🌙'
		when 'rain' then return '☔️'
		when 'snow' then return '❄️'
		when 'sleet' then return '❄️'
		when 'wind' then return  '💨'
		when 'fog' then return  '🌫'
		when 'cloudy' then return  '☁️'
		when 'partly-cloudy-day' then return  '⛅️'
		when 'partly-cloudy-night' then return  '☁️'

renderCurrentWeather = (location, lang) ->
	currently = getWeather(location, lang).currently
	temperature.text = "#{currently.apparentTemperature}°"
	summary.text = currently.summary
	icon.text = getIcon(currently.icon)

# Init	
renderCurrentWeather('45.560154, 10.203079')
brescia.stateSwitch('active')
oslo.stateSwitch('deactive')

# Actions
brescia.onTap ->
	brescia.stateSwitch('active')
	oslo.stateSwitch('deactive')
	renderCurrentWeather('45.560154, 10.203079')
			
oslo.onTap ->
	brescia.stateSwitch('deactive')
	oslo.stateSwitch('active')
	renderCurrentWeather('59.915885, 10.736832')
	