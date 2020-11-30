class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if @question.end_with? "?" then
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.eql? "I am going to work" then
      @answer = "Great"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
