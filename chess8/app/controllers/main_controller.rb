class MainController < ApplicationController

  def home
    rands = []
    for i in 1..3 do
      r = rand(10) + 1
      while rands.include? r
        r = rand(10) + 1
      end
      rands[rands.length] = r
    end

    @user1 = User.find(rands[0])
    @user2 = User.find(rands[1])
    @user3 = User.find(rands[2])
  end

  def game
    @ids = Array(1..10)

    @sample = @ids.sample
  end

  def rules

  end

end
