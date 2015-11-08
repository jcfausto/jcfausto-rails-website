class PagesController < ApplicationController
  def home
    @about_items = About.order(:order)
    @skills = Skill.order(:order)

    #This will not load all the attributes. Will bring only the text attribute in an array.
    @phrases = HeroPhrase.pluck(:text)
  end
end
