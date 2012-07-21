require "serverdensity-ruby/version"
require 'httparty'
require 'json'


# config
base = "https://api.serverdensity.com/1.4/"
account = "topspin.serverdensity.com"
apiKey = "f4d86ab28r3e4zq9a8re295j"

# GETS = {
#     'alerts': (
#         'getHistory', 'getLast', 'getOpen', 'getOpenNotified', 'list',
#     ),
#     'services': (
#         'list',
#     ),
#     'devices': (
#         'getByGroup', 'getByHostName', 'getById', 'getByIp', 'getByName',
#         'list', 'listGroups',
#     ),
#     'metrics': (
#         'getLatest', 'getRange', 'list',
#     ),
#     'mongo': (
#         'getMaster', 'getReplicaSet',
#     ),
#     'processes': (
#         'getByTime', 'getRange',
#     ),
#     'users': (
#         'getById', 'list',
#     ),
# }

GETS = { "alerts" => ['getHistory','getLast', 'getOpen', 'getOpenNotified', 'list'], "services" => ['list'], "devices" => ['getByGroup', 'getByHostName', 'getById', 'getByIp', 'getByName', 'list', 'listGroups'], "metrics" => ['getLatest', 'getRange', 'list'], "mongo" => ['getMaster', 'getReplicaSet'], "processes" => ['getByTime', 'getRange'], "users" => ['getById', 'list'] }
POSTS = { "alerts" => ['pause','resume'], "devices" => ['add','addGroup', 'delete', 'rename'], "metrics" => ['postback'], "users" => ['add', 'delete'] }
# POSTS = {
#     'alerts': {'pause', 'resume'}
#         
#     },
#     'devices': {'add', 'addGroup', 'delete', 'rename'}
#         
#    },
#     'metrics': {'postback'}
#         
#     },
#     'users': {'add', 'delete'}
#         
#     }
# }

API_VERSION = '1.4'
BASE_URL = "https://api.serverdensity.com/#{API_VERSION}/%(section)s/%(method)s"

class SDApi
	VERSION = "0.0.1"
    # Lightweight ServerDensity.com API wrapper

	def initialize(account, username, password, api_key, name="None", gets = GETS, posts = POSTS, base_url = BASE_URL, api_version = API_VERSION)

    account = account
    username = username
    password = password
    api_key = api_key 
    name = name
    gets = gets
    posts = posts
    base_url = base_url
    api_version = api_version
	
	end

# https://github.com/serverdensity/py-serverdensity/blob/master/serverdensity/api.py#L66
	def request(method, data={}, params={})

		# Check for apiKey in the params
		if not params.include?(api_key) then 
                params['apiKey'] = api_key
        end
      
        # Check for account in the params
        if not params.include?(account) then
               params['account'] = account
        end

        url = base_url

	end


end
