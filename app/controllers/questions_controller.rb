class QuestionsController < ApplicationController
  def ask
    # Filler
  end

  def answer
    @answer = ''
    @question = params[:question]
    # :question connects to the name of the input field 'name' in the view
    if @question.include?('I am going to work')
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get back to work'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
