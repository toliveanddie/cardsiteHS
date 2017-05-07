module DecksHelper
    
    def arena_random_card
        attack = nil
        image = nil
        
        while (attack == nil) do
            while (image == nil) do
                
                a = Card.all
                b = a.shuffle.pop
                image = b.img
            end
            attack = b.attack
        end
        return b
    end
end
