class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  has_one :genre
  def actors_list
    self.actors.collect do |actor|
      actor.full_name
    end
  end
end