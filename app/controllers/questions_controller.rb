class QuestionsController < ApplicationController
    def ask

    end

    def answer
        @questions = params[:question]
        @answer = question(@questions)
    end

    def question(question)
        if question == "I am going to work right now!"
            return "Congrats"
         else
             coach_answer_enhanced(question)
         end
    end
    
    def coach_answer_enhanced(your_message)
        # TODO: return coach answer to your_message, with additional custom rules of yours!
        if your_message == "I AM GOING TO WORK RIGHT NOW!"
            return ""
        elsif your_message == your_message.upcase && your_message.include?("?")
            return "I can feel your motivation! Silly question, get dressed and go to work!"
        elsif your_message == your_message.upcase
            return "I can feel your motivation! I don't care, get dressed and go to work!"
        else
            return coach_answer(your_message)
        end
    end

    def coach_answer(your_message)
    # TODO: return coach answer to your_message
        if your_message == "I am going to work right now!"
            return ""
        elsif your_message.include?("?")
            return "Silly question, get dressed and go to work!"
        else
            return "I don't care, get dressed and go to work!"
        end
    end
      
      
end
