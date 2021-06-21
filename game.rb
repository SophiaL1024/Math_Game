class Game_loop
  def initialize name
    @name=name
    @num1=rand(0...20)
    @num2=rand(0...20)   
  end
  def game
    puts "#{@name}: What does #{@num1} plus #{@num2} equal?"
    answer  = gets.chomp.to_i
    if answer==@num1+@num2      
        puts "YES! You are correct."
        return true         
    else 
      puts "#{@name}: Seriously? No!"
      return false      
    end
  end
end