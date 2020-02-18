require File.join(File.dirname(__FILE__), '..', 'config', 'environment')


# 3rd party gems
require 'oj'
Oj.mimic_JSON() # this will speedup benchmarks using #to_json
require 'bixby/bench'

require 'active_support/core_ext/object/json'
require 'active_support/core_ext/object/deep_dup'

require 'models/model'
require 'models/box_score'
require 'models/event'
require 'models/event_factory'
require 'models/play_by_play_record'
require 'models/team'

# init files
require 'rabl/init'
require 'serializers/init'
require 'api_view/init'
require 'active_serializer/init'

require 'serializers/event_summary_serializer'
require 'serializers/team_serializer'
require 'serializers/basketball/event_serializer'

require 'presenters/event_summary_presenter'
require 'presenters/team_presenter'
require 'presenters/basketball/event_presenter'

require "runner"
