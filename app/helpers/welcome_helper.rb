module WelcomeHelper
    
    def show_random_card
        check = nil
        collect = false
        while (check == nil) do
            while (collect == false) do
                a = Card.all
                b = a.shuffle.pop
                collect = b.collectible?
            end
            check = b.img
        end
        return b
    end
    
end
