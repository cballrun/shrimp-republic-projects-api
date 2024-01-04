module Types
    class MemberType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :location, String, null: false
      field :description, String, null: false
    end
end