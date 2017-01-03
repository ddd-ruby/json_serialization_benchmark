module ActSer
  class EventSerializer
    include ActiveSerializer::SerializableObject

    serialization_rules do |event|
      # copy from EventSummarySerializer
      attributes :game_date, :game_type, :status, event

      serialize_entity :away_team, event.away_team, ActSer::Basketball::TeamSerializer
      serialize_entity :home_team, event.home_team, ActSer::Basketball::TeamSerializer
      # *****************
      attributes :share_url, :sport_name, event

      serialize_entity :box_score, event.box_score, ActSer::Basketball::BoxScoreSerializer
    end
  end
end
