require "action_view"

class Cat < ApplicationRecord
    COLORS = %w(black white orange brown)
    
    validates :color, inclusion: {in: COLORS}, presence: true
    validates :sex, inclusion: {in: %w(M F)}, presence: true
    validates :name,:birth_date, presence: true
    

    include ActionView::Helpers::DateHelper
    
    def age
        time_ago_in_words(self.birth_date)
    end

    def self.colors
        COLORS
    end
    
end
