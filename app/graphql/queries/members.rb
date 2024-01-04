module Queries
    class Members < Queries::BaseQuery
        type [Types::MemberType], null: false

        def resolve
            if members = Member.all
                return members
            else raise GraphQL::ExecutionError, "There are no members in your database."
            end
        end
    end
end