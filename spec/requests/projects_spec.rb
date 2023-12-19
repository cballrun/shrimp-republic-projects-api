require 'rails_helper'

RSpec.describe "Projects API", type: :request do
    before(:each) do
        @gamedrive = Project.create(name: "Game Drive", url: "www.gamedrive.com", description: "gamedrive description", features: "gamedrive features", classification: 2, stage: 2, start_date: Date.yesterday, end_date: Date.tomorrow )
        @shorecasts = Project.create(name: "ShoreCasts", url: "www.shorecasts.com", description: "shorecasts description", features: "shorecasts features", classification: 3, stage: 3, start_date: Date.today, end_date: Date.tomorrow )
        @ptrade = Project.create(name: "P-Trade", url: "www.ptrade.com", description: "ptrade description", features: "ptrade features", classification: 1, stage: 3, start_date: Date.today, end_date: Date.today )

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

    # def query_string
    #     <<~GQL
    #         query {
    #             projects {
    #                 id
    #                 name
    #                 url
    #                 description
    #                 features
    #                 classification
    #                 stage
    #                 start_date
    #                 end_date
    #             }
    #         }
    #     GQL
    # end
end