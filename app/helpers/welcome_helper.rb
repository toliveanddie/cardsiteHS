module WelcomeHelper
    def show_random_card(cards)
        check = nil
        collect = false
        while (check == nil) do
            while (collect == false) do
                b = cards.shuffle.pop
                collect = b.collectible?
            end
            check = b.img
        end
        return b
    end
end
