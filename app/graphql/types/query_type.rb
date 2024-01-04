# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    field :projects, resolver: Queries::Projects
    field :members, resolver: Queries::Members
  end
end
