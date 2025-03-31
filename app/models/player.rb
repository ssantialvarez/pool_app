class Player < ApplicationRecord
  validates :auth0_id, presence: true
  validates :name, presence: true
  validates :profile_picture_url, presence: true
  after_create :log_new_player
  after_initialize :init

    def init
      self.ranking  ||= 0           # will set the default value only if it's nil
    end

  private
    def log_new_player
      puts "A new player was registered"
    end
end
