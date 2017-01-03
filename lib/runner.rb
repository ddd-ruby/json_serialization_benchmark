module Runner
  def self.run
    collection_size = 100
    rabl_view_path  = File.expand_path(File.dirname(__FILE__) + '/rabl/views')

    event = EventFactory.build_event
    team  = event.home_team

    event_collection = collection_size.times.map { event }
    team_collection  = collection_size.times.map { team }

    Bixby::Bench.run(10_000) do |b|

      # ULTRA SIMPLE
      b.sample('RABL Ultra Simple') do
        Rabl.render(team, 'teams/item', view_path: rabl_view_path, format: :json)
      end

      b.sample('AMS Ultra Simple') do
        TeamSerializer.new(team).to_json
      end

      b.sample('Presenters Ultra Simple') do
        TeamPresenter.new(team).to_json
      end

      b.sample('ApiView Ultra Simple') do
        ApiView::Engine.render(team, nil, :format => "json")
      end


      # SIMPLE
      b.divider

      b.report('RABL Simple') do
        Rabl.render(event, 'events/item', view_path: rabl_view_path, format: :json)
      end

      b.report('AMS Simple') do
        EventSummarySerializer.new(event).to_json
      end

      b.report('Presenters Simple') do
        EventSummaryPresenter.new(event).to_json
      end

      b.report('ApiView Simple') do
        ApiView::Engine.render(event, nil, :format => "json", :use => EventSummaryApiView)
      end


      # COMPLEX
      b.divider

      b.report('RABL Complex') do
        Rabl.render(event, 'basketball/events/show', view_path: rabl_view_path, format: :json)
      end

      b.report('AMS Complex') do
        Basketball::EventSerializer.new(event).to_json
      end

      b.report('Presenters Complex') do
        Basketball::EventPresenter.new(event).to_json
      end

      b.report('ApiView Complex') do
        ApiView::Engine.render(event, nil, :format => "json", :use => BasketballEventApiView)
      end
    end


    # COLLECTION TESTS
    puts "\n\nCollection tests:\n\n"

    Bixby::Bench.run(100) do |b|

      # ULTRA SIMPLE
      b.report('RABL Ultra Simple: Collection') do
        Rabl.render(team_collection, 'teams/index', view_path: rabl_view_path, format: :json)
      end

      b.report('AMS Ultra Simple: Collection') do
        ActiveModel::Serializer::CollectionSerializer.new(team_collection, each_serializer: TeamSerializer).to_json
      end

      b.report('Presenters Ultra Simple: Collection') do
        team_collection.map { |team| TeamPresenter.new(team).as_json }.to_json
      end

      b.report('ApiView Ultra Simple: Collection') do
        ApiView::Engine.render(team_collection, nil, :format => "json")
      end


      # SIMPLE
      b.divider

      b.report('RABL Simple: Collection') do
        Rabl.render(event_collection, 'events/index', view_path: rabl_view_path, format: :json)
      end

      b.report('AMS Simple: Collection') do
        ActiveModel::Serializer::CollectionSerializer.new(event_collection, each_serializer: EventSummarySerializer).to_json
      end

      b.report('Presenters Simple: Collection') do
        event_collection.map { |event| EventSummaryPresenter.new(event).as_json }.to_json
      end

      b.report('ApiView Simple: Collection') do
        ApiView::Engine.render(event_collection, nil, :format => "json", :use => EventSummaryApiView)
      end


      # COMPLEX
      b.divider

      b.report('RABL Complex: Collection') do
        Rabl.render(event_collection, 'basketball/events/index', view_path: rabl_view_path, format: :json)
      end

      b.report('AMS Complex: Collection') do
        ActiveModel::Serializer::CollectionSerializer.new(event_collection, each_serializer: Basketball::EventSerializer).to_json
      end

      b.report('Presenters Complex: Collection') do
        event_collection.map { |event| Basketball::EventPresenter.new(event).as_json }.to_json
      end

      b.report('ApiView Complex: Collection') do
        ApiView::Engine.render(event_collection, nil, :format => "json", :use => BasketballEventApiView)
      end
    end
  end
end
