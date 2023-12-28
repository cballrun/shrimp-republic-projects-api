require 'rails_helper'

RSpec.describe "Projects API", type: :request do
    before(:each) do
        @gamedrive = Project.create(name: "Game Drive", url: "www.gamedrive.com", description: "gamedrive description", features: "gamedrive features", classification: "gamedrive classification", stage: "gamedrive stage", start: "July 2023", end: "November 2023" )
        @shorecasts = Project.create(name: "ShoreCasts", url: "www.shorecasts.com", description: "shorecasts description", features: "shorecasts features", classification: "shorecasts classification", stage: "shorecasts stage", start: "January 2022", end: "Ongoing" )
        @ptrade = Project.create(name: "P-Trade", url: "www.ptrade.com", description: "ptrade description", features: "ptrade features", classification: "gamedrive classification", stage: "ptrade stage", start: "January 2024", end: "Ongoing" )

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
                }
            }
        GQL
    end

    it 'returns 3 events' do

        post "/graphql", params: { query: query_string }
        expect(response).to be_successful
        reply = JSON.parse(response.body, symbolize_names: true)
        binding.pry
        data = reply[:data]

        expect(data[:projects].count).to eq(3)
    end
end