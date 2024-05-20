class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params[:question]

    if @user_question == 'i am going to work'
      @answer = 'Great'

    elsif @user_question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'

    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
