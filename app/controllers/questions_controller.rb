class QuestionsController < ApplicationController

  def answer
    @question = params[:question]
    if @question.match?(/i am going to work/i)
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# action specifies the URL that will be used when submitting the form, so answer.html
# and the action in the controller it will need
# name enables you to name each parameter corresponding to each input of the form.
