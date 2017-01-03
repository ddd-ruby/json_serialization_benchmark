module ActSer
  class TeamSerializer
    include ActiveSerializer::SerializableObject

    serialization_rules do |team|
      attributes :abbreviation, :full_name, :location, team
    end
  end
end
