# Towers of Hanoi
#
# Write a Towers of Hanoi game:
# http://en.wikipedia.org/wiki/Towers_of_hanoi
#
# In a class `TowersOfHanoi`, keep a `towers` instance variable that is an array
# of three arrays. Each subarray should represent a tower. Each tower should
# store integers representing the size of its discs. Expose this instance
# variable with an `attr_reader`.
#
# You'll want a `#play` method. In a loop, prompt the user using puts. Ask what
# pile to select a disc from. The pile should be the index of a tower in your
# `@towers` array. Use gets to get an
# answer. Similarly, find out which pile the user wants to move the disc to.
# Next, you'll want to do different things depending on whether or not the move
# is valid. Finally, 0if they have succeeded in moving all of the discs to
# another pile, they win! The loop should end.
#
# You'll want a `TowersOfHanoi#render` method. Don't spend too much time on
# this, just get it playable.
#
# Think about what other helper methods you might want. Here's a list of all the
# instance methods I had in my TowersOfHanoi class:
# * initialize
# * play
# * render
# * won?
# * valid_move?(from_tower, to_tower)
# * move(from_tower, to_tower)
#
# Make sure that the game works in the console. There are also some specs to
# keep you on the right track:

class TowersOfHanoi
    # we allow this value to be accessed
    attr_accessor :towers
  
    # this is the new instance of TowersOfHanoi
    def initialize
      @towers = [[3,2,1],[],[]]
    end
  
    def get_input
      puts "What pile would you like to select a disk from: 0,1,2?"
      from = gets.chomp.to_i
      puts "What pile would you like to move a disk to: 0,1,2?"
      to = gets.chomp.to_i
      [from,to]
    end
  
    def play
      puts "Here is the current board"
      render
      while @towers != [[],[],[3,2,1]]
        from,to = get_input
        if valid_move?(from,to)
          move(from,to)
          puts "Here's the new board"
          render
        else
          puts "Hmm, looks like somethings wrong. Try again."
          get_input
        end
      end
       puts "Looks like you won! Great job!"
    end
  
    def render
      p @towers
    end
  
    def move(from_tower,to_tower)
      @towers[to_tower] << @towers[from_tower].pop
    end
  
    def valid_move?(from_tower,to_tower)
      begin
        moving_tower = @towers[from_tower]
        bottom_tower = @towers[to_tower]
        if !moving_tower.empty?
          return true if bottom_tower.empty? || bottom_tower.last > moving_tower.last
        end
        return false
      end
    end
  end