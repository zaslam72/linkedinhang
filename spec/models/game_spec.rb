require 'rails_helper'

RSpec.describe Game, type: :model do 
  
  let(:user) { User.create(name: "Zara", username: "zarazara", password: "password") }
  let(:game) { Game.create(word: "sandwich", guesses: "bqx", user_word: "________", user_id: user.id) }
  let(:game2) { Game.create(guesses: "bqx", user_word: "________", user_id: user.id) }


  describe "game attributes" do 

    it "has a word" do
      expect(game.word).to eq "sandwich"
    end 

    it "has a string of guesses" do 
      expect(game.guesses).to eq "bqx"
    end 

    it "has a user word" do 
      expect(game.user_word).to eq "________" 
    end 

    it "belongs to a user" do 
      expect(game.user).to eq user
    end 

    it "validates the presence of word" do 
      expect(game2.id).to eq nil 
    end 

  end 

end 