class PagesController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  private

  def coach_answer(query)
    if query == "I am going to work right now!"
      answer =  ""
    elsif query.include?("?")
      answer = "Silly question, get dressed and go to work!"
    else
      answer = "I don't care, get dressed and go to work!"
    end
  end


end
