class Match
    
    def goo
        
        choice = ["グー","チョキ","パー","戦わない"]
        puts "0(グー),1(チョキ),2(パー),3(戦わない)"
        user_select = gets.to_i
        cpu_select = rand(3)
        puts "ほい！"
        puts "-------------------"
        puts "あなたは#{choice[user_select]}を選びました"
        puts "相手は#{choice[cpu_select]}を選びました"
        puts "-------------------"
        
        
        case 
            when user_select == cpu_select
                puts "あいこで〜"
                goo()
                
            when (user_select == 0 && cpu_select == 1) ||
                 (user_select == 1 && cpu_select == 2) ||
                 (user_select == 2 && cpu_select == 0) 
                puts "じゃんけんはあんたの勝ち"
                @win = "user"
                
                
            when (user_select == 1 && cpu_select == 0) ||
                 (user_select == 2 && cpu_select == 1) ||
                 (user_select == 0 && cpu_select == 2) 
                
                puts "じゃんけんはCPUの勝ち"
                @win = "cpu"
                
                
            when user_select == 3
                puts "平和やん"
                return false
                
                
            else
                puts "数字を選ぼう！"
                
        end
    end
    
    def hoi
        puts "-------------------"
        choice = ["上","下","右","左"]
        puts "あっちむいて〜"
        puts "0(上),1(下),2(右),3(左)"
        user_select = gets.to_i
        cpu_select = rand(4)
        puts "ほい！"
        puts "-------------------"
        puts "あなたは#{choice[user_select]}を選びました"
        puts "相手は#{choice[cpu_select]}を選びました"
        puts "-------------------"
        puts "勝ち負け判定をします"
        
        if user_select == cpu_select
            puts "勝負あり"
            case @win
                when "user"
                    puts "おめでとう！"
                    puts "あなたの勝ち"
                    exit
                    
                when "cpu"
                    puts "コンピューターの勝ち"
                    puts "勝つまで頑張れ！！"
                    return true
                else
                    puts "意味わかめ"
            end
            
        else
            puts "ドロー"
            puts "もう一回ジャンケンだね"
           
            
        end
    end
    
end

first = Match.new

while
first.goo
first.hoi
end
