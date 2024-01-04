require 'rails_helper'

RSpec.describe "Members API", type: :request do
    before(:each) do
        @chase = Member.create(name: "Chase Gaddis", location: "St. Petersburg, FL", description: "Holding 3 years of experience in back-end engineering, mixed with 2 years of experience in front-end development; Chase thrives in balancing technical expertise and project management to bring a valuable skill set on the dev team where he excels in debugging and task organization for meeting technical deadlines on each product at hand.")
        @carter = Member.create(name: "Carter Ball", location: "Atlanta, GA", description: "during my tenure as an assistant controller, i honed my skills in data analytics, delving deep into large datasets with a focus on sql. eager for a broader technical toolkit, i made the decision to transfer from the financial realm to the tech world. this led me to turing school of software and design, where i dedicated seven months to mastering ruby on rails and solidifying my proficiency with databases.")
    end

    def query_string
        <<~GQL
            query {
                members {
                    name
                    location
                    description
                }
            }
        GQL
    end

    it 'returns 2 members' do
        post "/graphql", params: { query: query_string }
        expect(response).to be_successful
        reply = JSON.parse(response.body, symbolize_names: true)
        data = reply[:data]

        expect(data[:members].count).to eq(2)
    end
end