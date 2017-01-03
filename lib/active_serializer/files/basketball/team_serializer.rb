module ActSer
  module Basketball
    class TeamSerializer
      include ActiveSerializer::SerializableObject

      serialization_rules do |team|
        # copy from ActSer::TeamSerializer
        attributes :abbreviation, :full_name, :location, team
        # *****************

        attributes :medium_name, :short_name, team
      end
    end
  end
end
