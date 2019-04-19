# D&D Initiative Tracker Client

This app is a simple initiative tracker for playing Dungeons & Dragons or similar tabletop RPGs.  A GM can create a new encounter and enter the combatants and their initiatives.  The play button can then be used to cycle through the turn order.  You can return to the encounter later using the generated ID at the bottom of each new encounter.

The client repository for this app can be found [here](https://github.com/caseydulong/initiative-tracker-client).

![Initiative Tracker Client](https://i.imgur.com/Mk0Xl9P.png)

### Technologies Used

- MongoDB
- Mongoose
- Express
- Node

### Known Issues

1. Users can "get" encounters that don't belong to them by entering a valid ID.  They cannot, however, make changes to the encounter while they are viewing it.  If they attempt to add a combatant, they will receive an error, but they will also see the combatant added to the table.  This change is localized to the state and does not affect the encounter.  This problem will be solved by disallowing access to encounter documents not owned by the current user.

### Planning and Development

Due to the short development cycle for this app, I planned from the beginning to make it simple, clean, and functional.

My original vision of the app had multiple user (players and GM) connecting to the encounter simultaneously, allowing each player to enter their own name and initiative, while the GM enters the monsters.  Everyone would see updates in real time, and the GM could choose to hide certain monsers from the player view.  Due to time constraints, a much simplified version of the app currently exists here.

#### Wireframe:
![wireframe](https://i.imgur.com/70ahVHJ.jpg)

#### ERD:
Users -|---< Encounters -|---< Combatants

### Future Features

- Allow a DM to save a party of players as a template encounter so they don't have to enter each player's name for each encounter.
- Add additional fields to combatants, such as hit points and armor class.
- Allow users to store characters with associated values (hit points, armor class, initiative modifier), and allow the app to "roll" initiative for the combatants.
- Allow multiple users to connect to an encounter at once so that each player can enter their own name and initiative, while the DM enters the monsters.
- Allow for separate DM and player views, so the DM can choose when to display hidden monsters to the players.

### Installation

1. Run `npm start` in the client directory to start the React app.
2. Run `npm run server` in the API directory to start the backend server.

### Catalogue of Routes

| Verb   | URI Pattern      | Controller#Action     |
|--------|------------------|-----------------------|
| Post   | /sign-up         | users#sign-up         |
| Post   | /sign-in         | users#sign-in         |
| Delete | /sign-out        | users#sign-out        |
| Patch  | /change-password | users#change-password |
| Get    | /encounters      | encounters#index      |
| Get    | /encounters/:id  | encounters#show       |
| Post   | /encounters      | encounters#create     |
| Patch  | /encounters/:id  | encounters#update     |
| Delete | /encounters/:id  | encounters#destroy    |
