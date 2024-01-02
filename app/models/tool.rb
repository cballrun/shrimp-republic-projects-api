class Tool < ApplicationRecord
    has_many :project_tools
    has_many :projects, :through => :project_tools
    validates_presence_of :name, :url
end
