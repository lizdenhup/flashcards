# Flashcard
This is a Ruby on Rails app for making and reviewing academic flashcards. This app supports OAuth basic authentication through Github or basic signup through Devise.

# Installation
To install and run Flashcard on your computer, fork and clone this repository and cd into the 'flashcards' directory in your terminal. Once you're in the right directory, run 'bundle install' to install the gems needed for this app to function on your machine. Be sure to also run 'rake db:migrate' to create the necessary users, decks, subjects, and cards tables. When you are ready, type 'rails s' into the terminal to deploy a local server on your machine for testing and using the app. (Flashcard should accept incoming requests on port 3000 of your network, so navigate to 'localhost:3000' in your browser of choice to work with the app.) 

# Contributing
If you are interested in modifying or extending Flashcard, please feel free to fork this repository and make changes before submitting a pull request.

# License
This project is available for use under the MIT license. You can read more about this license [here](https://opensource.org/licenses/MIT).
