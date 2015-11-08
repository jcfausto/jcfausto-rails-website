class PagesController < ApplicationController
  def home
    @about_items = About.order(:order)
    @skills = Skill.order(:order)
    @portfolio = Project.where(visible: true)
    @achievements = Achievement.order(when: :desc)

    #This will not load all the attributes. Will bring only the text attribute in an array.
    @phrases = HeroPhrase.pluck(:text)
  end

end
