module ActSer
  module Basketball
    class EventSerializer
      include ActiveSerializer::SerializableObject

      serialization_rules do |event|

        attributes :share_url,
                   :sport_name,
                   event
        attributes :away_ranking,
                   :away_region,
                   :home_ranking,
                   :home_region,
                   :important,
                   :location,
                   event

        serialize_entity :box_score, event.box_score, ActSer::Basketball::BoxScoreSerializer
      end

      # def include_away_ranking?
      #   object.ncaa?
      # end

      # def include_away_region?
      #   object.ncaa?
      # end

      # def include_home_ranking?
      #   object.ncaa?
      # end

      # def include_home_region?
      #   object.ncaa?
      # end
    end
  end
end
# inherits from EventSerializer
