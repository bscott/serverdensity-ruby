require "serverdensity-ruby/version"
require 'httparty'
require 'json'


# config
Her::API.setup :base_uri => "https://api.serverdensity.com/1.4/"
base = "https://api.serverdensity.com/1.4/"
account = "topspin.serverdensity.com"
apiKey = "f4d86ab28r3e4zq9a8re295j"

GETS = {
    'alerts': (
        'getHistory', 'getLast', 'getOpen', 'getOpenNotified', 'list',
    ),
    'services': (
        'list',
    ),
    'devices': (
        'getByGroup', 'getByHostName', 'getById', 'getByIp', 'getByName',
        'list', 'listGroups',
    ),
    'metrics': (
        'getLatest', 'getRange', 'list',
    ),
    'mongo': (
        'getMaster', 'getReplicaSet',
    ),
    'processes': (
        'getByTime', 'getRange',
    ),
    'users': (
        'getById', 'list',
    ),
}

POSTS = {
    'alerts': (
        'pause', 'resume',
    ),
    'devices': (
        'add', 'addGroup', 'delete', 'rename',
    ),
    'metrics': (
        'postback',
    ),
    'users': (
        'add', 'delete',
    ),
}

API_VERSION = '1.4'
BASE_URL = "https://api.serverdensity.com/#{API_VERSION}/%(section)s/%(method)s"

class SDApi << self
	VERSION = 0.0.1

	def initialize(account, username, password, api_key, name="None", gets = GETS, posts = POSTS, base_url = BASE_URL, api_version = API_VERSION)

    self.account = account
    self.username = username
    self.password = password
    self.api_key = api_key 
    self.name = name
    self.gets = gets
    self.posts = posts
    self.base_url = base_url
    self.api_version = api_version
	
	end

	def request(self, method, data={}, params={})

		# Check for apiKey in the params
		if params.include?(api_key)


	end


end
