class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = coach(params[:question])
  end
  def coach(message)
    if message.downcase == "i am going to work right now!"
      ""
    elsif message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end

