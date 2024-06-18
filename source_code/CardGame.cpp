#include <SFML/Graphics.hpp>
#include <iostream>
#include <vector>
#include <cstdlib> // For random AI behavior

class Card {
public:
    std::string name;
    int attack, defense;

    Card(std::string name, int attack, int defense) : name(name), attack(attack), defense(defense) {}
};

class Deck {
public:
    std::vector<Card> cards;

    void addCard(const Card& card) {
        cards.push_back(card);
    }
};

class Game {
private:
    sf::RenderWindow window;
    Deck playerDeck, aiDeck;
    int playerHealth = 100, aiHealth = 100;

public:
    Game() : window(sf::VideoMode(800, 600), "Duel Of Fates") {
        loadDecks();
    }

    void loadDecks() {
        // Simplified deck loading
        playerDeck.addCard(Card("Soldier", 10, 5));
        aiDeck.addCard(Card("Robot", 12, 4));
    }

    void run() {
        while (window.isOpen()) {
            sf::Event event;
            while (window.pollEvent(event)) {
                if (event.type == sf::Event::Closed)
                    window.close();
            }

            update();
            render();
        }
    }

    void update() {
        // Example: Play a card randomly for AI
        int cardIndex = std::rand() % aiDeck.cards.size();
        Card& card = aiDeck.cards[cardIndex];
        playerHealth -= card.attack; // AI attacks player

        if (playerHealth <= 0 || aiHealth <= 0) {
            window.close(); // End game if health runs out
        }
    }

    void render() {
        window.clear();
        // Render logic here (omitted for brevity)
        window.display();
    }
};

int main() {
    Game game;
    game.run();
    return 0;
}
