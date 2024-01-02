module Queries
    class Projects < Queries::BaseQuery
        type [Types::ProjectType], null: false

        def resolve
            if projects = Project.all
                return projects
            else raise GraphQL::ExecutionError, "There are no projects in your database."
            end
        end
    end
end