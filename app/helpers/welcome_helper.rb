module WelcomeHelper
    def show_random_card(cards)
        a = nil
        while (a == nil) do
            b = cards.shuffle.pop
            a = b.img
        end
        return b
    end
end
