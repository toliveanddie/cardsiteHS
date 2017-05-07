module DecksHelper
    
    def arena_random_card
        attack = nil
        image = nil
        collect = false
        
        while (attack == nil) do
            while (image == nil) do
                while (collect == false) do
                    a = Card.all
                    b = a.shuffle.pop
                    collect = b.collectible?
                end
                image = b.img
            end
            attack = b.attack
        end
        return b
    end
end
