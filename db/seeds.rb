# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rails = Tool.create!(name: "Ruby on Rails", url: "https://rubyonrails.org/doctrine")
aws = Tool.create!(name: "AWS", url: "https://aws.amazon.com")
react = Tool.create!(name: "React", url: "https://react.dev")
play = Tool.create!(name: "Google Play", url: "https://play.google.com")
graphql = Tool.create!(name: "GraphQL", url: "https://graphql.org/")
postgres = Tool.create!(name: "PostgreSQL", url: "https://www.postgresql.org/")
testflight = Tool.create!(name: "Test Flight", url: "https://developer.apple.com/testflight")
android = Tool.create!(name: "Android", url: "https://developer.android.com")
python = Tool.create!(name: "Python", url: "https://www.python.org")
javascript = Tool.create!(name: "JavaScript", url: "https://www.javascript.com")
figma = Tool.create!(name: "Figma", url: "https://www.figma.com")
go = Tool.create!(name: "Go", url: "https://go.dev")

chessmeito = Project.create!(name: "ChessMeito", url: "https://www.chessmeito.com", description: "The chess one the chess one the chess one. the Chesser McChess Guy. You know, that one with chess.", features: ["feature 1", "feature 2", "feature 3"], classification: "Contract Work", stage: "Production", start: "August 2023", end: "December 2023")
shorecasts = Project.create!(name: "Shorecasts", url: "https://www.shorecasts.com", description: "The one for fishermen with huge balls. Tells them all about the wind, the rain, the birds and the bees, you name it. If a fisherman wants it, bitch we got it. Chase's baby. Carter ain't done jag shid on dis one.", features: ["feature 1", "feature 2", "feature 3", "feature 4"], classification: "Personal", stage: "Revamp", start: "January 2022", end: "Ongoing")
ptrade = Project.create!(name: "P-Trade", url: "https://github.com/cballrun/poketrader_2", description: "Are you a card nerd? Us too. This one lets you trade cards. One day, you're going to be able to combine trading and selling cards on this one. It's gonna be pretty cool. But right now it doesn't actually exist.", features: ["feature 1"], classification: "Personal", stage: "Ideation", start: "January 2024", end: "Ongoing")
gamedrive = Project.create!(name: "ChessMeito", url: "https://github.com/cballrun", description: "This one had so much potential and still does! I'm only going to put positive things here because that's how we're riding in to the New Year. We kicked ass on our portion of this project and I'm proud of the work that we did.", features: ["feature 1", "feature 2", "feature 3", "feature 4", "feature 5", "feature 6"], classification: "Contract Work", stage: "MVP User Testing", start: "July 2023", end: "November 2023")

shorecasts_rails = ProjectTool.create!(project: shorecasts, tool: rails)
shorecasts_graphql = ProjectTool.create!(project: shorecasts, tool: graphql)
shorecasts_postgres = ProjectTool.create!(project: shorecasts, tool: postgres)
shorecasts_javascript = ProjectTool.create!(project: shorecasts, tool: javascript)
shorecasts_aws = ProjectTool.create!(project: shorecasts, tool: aws)
shorecasts_react = ProjectTool.create!(project: shorecasts, tool: react)

ptrade_rails = ProjectTool.create!(project: ptrade, tool: rails)
ptrade_graphql = ProjectTool.create!(project: ptrade, tool: graphql)
ptrade_postgres = ProjectTool.create!(project: ptrade, tool: postgres)
ptrade_javascript = ProjectTool.create!(project: ptrade, tool: javascript)
ptrade_aws = ProjectTool.create!(project: ptrade, tool: aws)
ptrade_react = ProjectTool.create!(project: ptrade, tool: react)
ptrade_figma = ProjectTool.create!(project: ptrade, tool: figma)

chessmeito_testflight = ProjectTool.create!(project: chessmeito, tool: testflight)
chessmeito_android= ProjectTool.create!(project: chessmeito, tool: android)
chessmeito_javascript = ProjectTool.create!(project: chessmeito, tool: javascript)
chessmeito_react = ProjectTool.create!(project: chessmeito, tool: react)
chessmeito_play = ProjectTool.create!(project: chessmeito, tool: play)
chessmeito_figma = ProjectTool.create!(project: chessmeito, tool: figma)

gamedrive_go = ProjectTool.create!(project: gamedrive, tool: go)
gamedrive_postgres = ProjectTool.create!(project: gamedrive, tool: rails)
gamedrive_javascript = ProjectTool.create!(project: gamedrive, tool: javascript)
gamedrive_aws = ProjectTool.create!(project: gamedrive, tool: aws)
gamedrive_react = ProjectTool.create!(project: gamedrive, tool: react)
gamedrive_figma = ProjectTool.create!(project: gamedrive, tool: figma)
