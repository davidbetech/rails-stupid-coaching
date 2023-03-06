class PagesController < ApplicationController
  def question
  end

  def answer
    @answer = "hello there"

    if params[:question]
      @question = (params[:question])
    end
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!."
    else
      @answer = "I don't care, get dressed and go to work!"
    end


  end
end
