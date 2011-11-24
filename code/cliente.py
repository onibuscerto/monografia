import urllib, urllib2
import json

# endereco do RouteServlet
url = 'http://dev.onibuscerto.com/route'

# parametros da consulta
parametros = {
	# coordenadas geograficas da origem
	# 499 Otsego Ave, San Francisco, CA 94112, USA
	'start.latitude': 37.721431,
	'start.longitude': -122.442082,

	# coordenadas geograficas do destino
	# 926 Union St, Oakland, CA 94607, USA
	'end.latitude': 37.806909,
	'end.longitude': -122.289962,

	# horario de partida
	'departure': '15:28'
}

# executa a consulta e imprime a resposta
try:
	# executa a consulta no web service
	data = urllib.urlencode(parametros)
	req = urllib2.Request(url, data)
	response = urllib2.urlopen(req)
	content = response.read()

	# decodifica o objeto JSON de content
	resultado = json.loads(content)

	# imprime a resposta no terminal
	import pprint
	pprint.PrettyPrinter(indent = 2).pprint(resultado)
except Exception, detail:
	print "Erro: ", detail
