# Title: Duel Of Fates

**Duel Of Fates** is an innovative card game battle project developed during **HackUSU 2024**, focusing on the exciting realm of game development. This project utilizes **Lua** and the Love2D framework to bring a strategic card battle game to life, inspired by classics like Yu-Gi-Oh.

## Development Environment

- **Programming Language**: Lua
- **Game Engine**: Love2D
- **Code Editor**: Visual Studio Code (VS Code)

## Game Concept

Players choose characters and decks from different eras (Ancient Rome, Early America, Future) to battle against a bot opponent. Victory is achieved by depleting the opponent's health bar through strategic card play.

### Key Features:

- **Deck Selection**
- **Bot Opponent**
- **Gameplay Mechanics**
- **Winning Condition**

## How to Use This Game

1. **Installation**: Clone the repository to your local machine. Ensure that Love2D is installed.
2. **Starting the Game**: Navigate to the game's directory and run it through Love2D. This can typically be done via command line or by setting up Love2D to run through your IDE.
3. **Choosing a Deck**: At the game's start, you'll be prompted to choose your deck. Use your keyboard to select one of the three available decks.
4. **Playing Cards**: During your turn, select a card to play by navigating through your hand with keyboard inputs and confirming your selection.
5. **Winning the Game**: Use strategy to decide when to attack your opponent or defend against their attacks. Monitor both health bars to adjust your strategy as needed.

## How to Improve the Game

- **New Decks and Cards**: Introducing more decks and cards can add variety and depth to the game, encouraging players to explore new strategies.
- **Multiplayer Feature**: Implementing a multiplayer mode where players can challenge friends or online opponents could greatly enhance the game's replayability.
- **Enhanced AI**: Improving the bot's AI to make more strategic decisions based on the current game state could provide a more challenging and engaging experience for players.
- **Graphical UI**: Developing a more interactive and visually appealing user interface can make the game more immersive and user-friendly.

## What I Learned

Developing **Duel Of Fates** has been a journey of discovery and growth. I've learned the importance of clear project planning and the challenges of implementing game logic that feels balanced and engaging. Navigating the intricacies of Lua and Love2D has improved my problem-solving skills and deepened my understanding of game development frameworks. The feedback loop from testing and iteration has been invaluable in learning how to refine gameplay mechanics and user experiences.

## Game Operation and Build Details

**Duel Of Fates** operates on a turn-based system where players and the bot opponent alternate turns, playing cards from their hand. Each card has specific abilities that can either attack the opponent or defend against attacks. The game is built with Lua, utilizing the Love2D framework to manage game states, render graphics, and handle user inputs.

The game architecture is designed around modular components for easy expansion and maintenance. This includes separate modules for deck management, game logic, and UI rendering, allowing for isolated development and testing of different game aspects.

### Building the Game

1. **Game Logic**: The core gameplay mechanics were developed first, focusing on deck selection, card mechanics, and the turn-based system.
2. **UI Development**: After establishing the game logic, the user interface was developed to provide visual feedback and interaction capabilities to players.
3. **Testing and Refinement**: Continuous testing was conducted to identify and fix bugs, improve game balance, and refine the user experience.
4. **Optimization**: The final stage involved optimizing the code for performance and ensuring compatibility across different systems.
