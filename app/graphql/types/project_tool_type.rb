module Types
    class ProjectToolType < Types::BaseObject
      field :id, ID, null: false
      field :project, Types::ProjectType, null: false
      field :tool, Types::ToolType, null: false
    end
end
  