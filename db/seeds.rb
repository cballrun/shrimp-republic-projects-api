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

chessmeito = Project.create!(name: "ChessMeito", url: "https://www.chessmeito.com", description: "ChessMeito, where chess meets history. Enjoy two curated puzzles a day with the free version or subscribe and dive into over 6,000 puzzles drawn from actual grandmaster matches, putting you in the shoes of chess legends. ChessMeito's React Native mobile application is available on both the App Store and Play Store and utilizes a Python backend hosted on AWS.", features: ["Chess Puzzles, Updated Daily", "Play & App Store Payments", "Glassfy", "Monthly Subscriptions", "Free & Premium Versions"], classification: "Contract Work", stage: "Production", start: "August 2023", end: "December 2023")
shorecasts = Project.create!(name: "Shorecasts", url: "https://www.shorecasts.com", description: "Dive into Shorecasts, a practical tool by Chase Gaddis offering anglers a seamless blend of weather insights, tide charts, and fishing stores near them. Designed as a progressive web and mobile app with a focus on Rails, React, and AWS, Shorecasts centralizes essential tools for planning your days on the water. Discover fishing shop locations, marina services, fly shop details, and insightful reviews on local fishing guides. Shorecasts simplifies the planning process, ensuring your angling adventures are well-informed and tailored to the tides and weather.", features: ["Fishing Shop Locator", "Fly Shop Services & Locator", "Marina Services", "Tidal Predictions", "Weather Forecasts"], classification: "Personal", stage: "Revamp", start: "January 2022", end: "Ongoing")
ptrade = Project.create!(name: "P-Trade", url: "https://github.com/cballrun/poketrader_2", description: "P-Trade is a web application designed to be the central hub for online Pokemon card trading in the United States. Users can effortlessly search for and add cards to their online collection, complete with images, and engage in personalized buy, sell, and trade transactions within a community-oriented format.  P-Trade provides a comprehensive and user-centric platform for Pokemon card enthusiasts to show off their cards and trade like they used to back on the schoolyard.", features: ["Online Pokemon Card Hub", "User Following", "Messaging System", "Notifications", "Collection Showcasing & Tracking", "Card Valuation"], classification: "Personal", stage: "Wireframing", start: "November 2023", end: "Ongoing")
gamedrive = Project.create!(name: "Game Drive", url: "https://github.com/cballrun", description: "Game Drive connects gamers on a personalized level, elevating their online presence and providing a gateway to potential career opportunities. Designed for serious gamers and e-sports enthusiasts, Game Drive offers detailed match-by-match and lifetime stat tracking for titles such as League of Legends, Counter-Strike 2, and Dota 2. Utilizing Steam, Riot, and Google OAuth integrations as well as the Steam and Riot APIs, the platform also incorporates users' libraries and playtime metrics to craft a tailored news feed.  All of this information is displayed on a user's profile, which also includes posts and the capability to follow other users.", features: ["PC Gaming Statistics Tracking", "E-Sports Gaming Community", "User Posts and Comments", "Followers/Following", "E-Sports Teams Portal"], classification: "Contract Work", stage: "MVP User Testing", start: "July 2023", end: "November 2023")

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
