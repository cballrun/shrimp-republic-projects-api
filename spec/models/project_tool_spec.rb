require 'rails_helper'

RSpec.describe ProjectTool, type: :model do
  describe 'relationships' do
    it { should belong_to :project }
    it { should belong_to :tool }
  end 
end
