class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

    def actors_list
        # binding.pry
        #in Show > all characters > actors'rake names, grab each actors name
        self.actors.map do |a|
            a.full_name
        end
    end
end