module ActSer
  class EventSummarySerializer
    include ActiveSerializer::SerializableObject

    serialization_rules do |event|
      attributes :game_date, :game_type, :status, event

      serialize_entity :away_team, event.away_team, ActSer::Basketball::TeamSerializer
      serialize_entity :home_team, event.home_team, ActSer::Basketball::TeamSerializer
    end
  end
end
