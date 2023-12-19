class Project < ApplicationRecord
    has_many :project_tools
    has_many :tools, :through => :project_tools
    validates_presence_of :name, :url, :start_date
end
