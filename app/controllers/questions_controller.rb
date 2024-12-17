class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:question]
    @answer = coach_answer(@your_message )
  end

  def coach_answer(question)
    if question == "I am going to work right now!"
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
