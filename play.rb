class Play
  def initialize p1,p2
    @@p1=p1
    @@p2=p2
  end

  def start_game
    while @@p1.life>0 && @@p2.life>0
      puts "------NEW TURN-------"
      p = p || @@p1    
      loop=Game_loop.new p.name  
    
      unless loop.game
        p.life-=1
      end 
    
      puts "P1: #{@@p1.life}/3 vs P2: #{@@p2.life}/3"    
      
      if p.life==0
        winner= ((p==@@p1) && @@p2) || ((p==@@p2) && @@p1)
        puts "#{winner.name} wins with a score of #{winner.life}/3"
        puts "-----GAME OVER-----"
        puts "Good bye!"
        break
      end

      p= ((p==@@p1) && @@p2) || ((p==@@p2) && @@p1)
          
    end
  end
end