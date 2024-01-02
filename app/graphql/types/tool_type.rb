# frozen_string_literal: true

module Types
  class ToolType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :url, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
