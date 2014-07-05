require "sinatra"
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  database: "FlashCard"
)

class Deck < ActiveRecord::BASE
  has_many :cards
end

class Card < ActiveRecord::BASE
end
