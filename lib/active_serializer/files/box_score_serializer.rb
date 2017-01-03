module ActSer
  class BoxScoreSerializer
    include ActiveSerializer::SerializableObject

    serialization_rules do |event|
      attributes :has_statistics,
                 :progress,
                 event
    end
  end
end
