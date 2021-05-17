class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(8)
  end

  def score
    @score = 0
    @answer = []
    params[:word].each_char do |letter|
      if params[:letters].downcase.split(" ").include?(letter.downcase)
        @answer << "Yes"
      end
    end
  end
end
