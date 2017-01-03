module ActSer
  module Basketball
    class BoxScoreSerializer
      include ActiveSerializer::SerializableObject

      serialization_rules do |event|
        # copy from ActSer::BoxScoreSerializer
        attributes :has_statistics,
                   :progress,
                   event
        # ************************

        attributes :attendance,
                   :referees,
                   event

        serialize_entity :last_play, event.last_play, ActSer::Basketball::PlayByPlayRecordSerializer
      end
    end
  end
end
