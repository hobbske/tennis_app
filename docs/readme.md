TennisGroup.io
General Assembly WDI June 15, Project 2
Github: https://github.com/hobbske/tennis_app



*** Project Notes:

  TennisGroup was developed as a project assignment for the April 2015 Web Development Immersive course at General Assembly. It was developed over a week-long sprint to integrate Ruby on Rails and user authentication into our HTML5, SCSS and Javascript course foundation.

*** Overview

  Concept / Product Catalyst:
    This past Spring, I joined a 20-person men's doubles team and played in only 2 matches. Of the 8 scheduled, I missed 3 due to schedule conflicts and 3 because I wasn't one of the top players available for the 5 weekly matches.

  Problem:
    Tennis Leagues are a great way for people to find other players and to create predictable play schedules. However, for busy people with existing player circles, leagues don't provide the flexibility that allows them to play matches as often as they'd like.

  Goal:
    To solve the problem with a mobile-friendly website that allows busy people to supplement league play by providing an easy and flexible way to schedule independent matches within and between established groups.

  Solution:
    TennisGroup is a mobile-friendly, web application that allows users to quickly and easily find and schedule tennis matches with other TennisGroup members. Group, player, match and location data is gathered through either (a) form-based submission (profile and batch uploads), or (b) potential locations can be searched via Google Maps' API. Users also can use the "Request Match" feature to find compatible match opponents and quickly send a match request. You must sign up for a free account to get full functionality, as back-end authentication was a focus on this project.

  Process (is simple):
      - Set your play preferences
      - Find an opponent match
      - Set a suitable location
      - Play the match and record results (if you want)

*** Technologies Used:

  - Languages --> Ruby 2.1.1, HTML5, SCSS, Javascript, jQuery (library)
  - Framework --> Rails 4.1.1
  - Database models --> Postgresql [ Players, Users, Matches, Locations, Groups, Playermatches(mapping) and Playergroups(mapping) ]
  - Devise --> Authentication & Authorization
  - Location Search --> Geocoder Gem & Google Maps API with Javascript and jQuery
  - Front-end design & development --> Bootstrap & Superhero Bootswatch
  - Project mockup --> Invision ( https://projects.invisionapp.com/d/main#/console/3825382/83305252/preview )
  - Project Planning and User Stories --> Trello: https://trello.com/b/j6UKSUsp/tennisgroup-io
  - Deployment --> Heroku: http://tennisgroup.herokuapp.com/

*** Currently planned, future developments:

    - User testing (High Point Players)
    - Incorporate 'Paperclip' Gem to upload Player profile and Group logo pics
    - Advanced Search
    - 1-click Calendar Invites
    - Group-specific Views
    - More Sports (Golf, Fishing, Bowling)

*** Acknowledgements

    - Devise --> Super easy framework for robust Authentication
    - Bruce Kellerman --> table relationship logic between Groups and Players
    - Justin --> CSS bugs
    - Avant, Colin & Raheem --> general brainstorming and degugging
    - Mike/Marc --> code cleanup and debugging. Todos App(bootswatch, user-owned content) and Bean/Pastry App (model and relationship scaffolding)


