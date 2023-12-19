require 'rails_helper'

RSpec.describe Tool, type: :model do
  describe 'relationships' do
    it { should have_many :project_tools }
    it { should have_many(:projects).through(:project_tools) }
  end 

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
  end
end
