require 'rails_helper'

RSpec.describe "Projects API", type: :request do
    before(:each) do
        @gamedrive = Project.create(name: "Game Drive", url: "www.gamedrive.com", description: "gamedrive description", features: "gamedrive features", classification: "gamedrive classification", stage: "gamedrive stage", start: "July 2023", end: "November 2023" )
        @shorecasts = Project.create(name: "ShoreCasts", url: "www.shorecasts.com", description: "shorecasts description", features: "shorecasts features", classification: "shorecasts classification", stage: "shorecasts stage", start: "January 2022", end: "Ongoing" )
        @ptrade = Project.create(name: "P-Trade", url: "www.ptrade.com", description: "ptrade description", features: "ptrade features", classification: "gamedrive classification", stage: "ptrade stage", start: "January 2024", end: "Ongoing" )

        @rails = Tool.create!(name: "Ruby on Rails", url: "https://rubyonrails.org/doctrine")
        @aws = Tool.create!(name: "AWS", url: "https://aws.amazon.com")
        @react = Tool.create!(name: "React", url: "https://react.dev")
        @play = Tool.create!(name: "Google Play", url: "https://play.google.com")

        @gamedrive_rails = ProjectTool.create!(project: @gamedrive, tool: @rails)
        @gamedrive_aws = ProjectTool.create!(project: @gamedrive, tool: @aws)

        @shorecasts_aws = ProjectTool.create!(project: @shorecasts, tool: @aws)
        @shorecasts_react = ProjectTool.create!(project: @shorecasts, tool: @react)
        @shorecasts_rails = ProjectTool.create!(project: @shorecasts, tool: @rails)

        @ptrade_play = ProjectTool.create!(project: @ptrade, tool: @play)
    end

    def query_string
        <<~GQL
            query {
                projects {
                    id
                    name
                    url
                    description
                    features
                    classification
                    stage
                    start
                    end
                    projectTools {
                        id
                        tool {
                            id
                            name
                            url
                        }
                    }
                }
            }
        GQL
    end

    it 'returns 3 projects' do
        post "/graphql", params: { query: query_string }
        expect(response).to be_successful
        reply = JSON.parse(response.body, symbolize_names: true)
        data = reply[:data]

        expect(data[:projects].count).to eq(3)
    end

    it 'returns the correct tools for each project' do
        post "/graphql", params: { query: query_string }
        expect(response).to be_successful
        reply = JSON.parse(response.body, symbolize_names: true)
        data = reply[:data]

        gamedrive = data[:projects].first
        shorecasts = data[:projects].second
        ptrade = data[:projects].third
      
        expect(gamedrive[:projectTools].count).to eq(2)
        expect(shorecasts[:projectTools].count).to eq(3)
        expect(ptrade[:projectTools].count).to eq(1)
    end
end