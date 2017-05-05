module WelcomeHelper
    def show_random_card(cards)
        a = nil
        while (a == nil) do
            a = cards.shuffle.pop.img
        end
        return a
    end
end
