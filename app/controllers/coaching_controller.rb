class CoachingController < ApplicationController

  def answer
    @your_message = params[:your_message]
    @coach_i_answer = coach_answer_enhanced(@your_message)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message != "I am going to work right now!"
      return "I don't care, get dressed and go to work!"
    else
      return "Good boy!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I am going to work right now!" || your_message == "I AM GOING TO WORK RIGHT NOW!"
      return "Good boy!"
    else
      if your_message == your_message.upcase
        coach_shout_answer = "I can feel your motivation! " + coach_answer(your_message)
        return "#{coach_shout_answer}"
      else
        coach_answer(your_message)
      end
    end
  end

end