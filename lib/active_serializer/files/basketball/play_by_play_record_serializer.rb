module ActSer
  module Basketball
    class PlayByPlayRecordSerializer
      include ActiveSerializer::SerializableObject

      serialization_rules do |record|
        attributes :points_type,
                  :player_fouls,
                  :player_score,
                  :record_type,
                  :seconds,
                  record
      end
    end
  end
end
