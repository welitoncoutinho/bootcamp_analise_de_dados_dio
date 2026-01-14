-- 20 sample Pokémon cards
INSERT INTO tbl_cards (hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, cardNumberInCollection, collection_id)
VALUES
(120, 'Charizard', 1, 3, 'Flame Pokémon, evolves from Charmeleon', 'Fire Spin', '100', 'Water', 'None', '3', 4, 1),
(100, 'Blastoise', 2, 3, 'Shellfish Pokémon, evolves from Wartortle', 'Hydro Pump', '60+', 'Electric', 'None', '3', 2, 1),
(60, 'Pikachu', 4, 1, 'Mouse Pokémon, mascot of the franchise', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1', 58, 1),
(50, 'Bulbasaur', 3, 1, 'Seed Pokémon, starter from Kanto', 'Vine Whip', '20', 'Fire', 'Water', '1', 44, 1),
(80, 'Gengar', 5, 3, 'Shadow Pokémon, evolves from Haunter', 'Nightmare', '30', 'Psychic', 'Fighting', '1', 5, 3),
(70, 'Jigglypuff', 3, 1, 'Balloon Pokémon, sings opponents to sleep', 'Lullaby', '0', 'Steel', 'None', '1', 54, 2),
(90, 'Snorlax', 3, 1, 'Sleeping Pokémon, known for blocking paths', 'Body Slam', '30', 'Fighting', 'None', '4', 11, 2),
(60, 'Meowth', 3, 1, 'Scratch Cat Pokémon, loves coins', 'Pay Day', '20', 'Fighting', 'Psychic', '1', 56, 2),
(100, 'Dragonite', 2, 3, 'Dragon Pokémon, evolves from Dragonair', 'Hyper Beam', '40', 'Electric', 'None', '2', 4, 3),
(70, 'Kabutops', 2, 3, 'Shellfish Pokémon revived from fossil', 'Slash', '30', 'Grass', 'None', '2', 9, 3),
(60, 'Aerodactyl', 2, 1, 'Fossil Pokémon revived from Old Amber', 'Wing Attack', '30', 'Electric', 'Fighting', '1', 1, 3),
(80, 'Zapdos', 4, 1, 'Legendary bird Pokémon of thunder', 'Thunderstorm', '40', 'Rock', 'Steel', '2', 15, 1),
(70, 'Magmar', 1, 1, 'Spitfire Pokémon, fiery body', 'Smokescreen', '20', 'Water', 'None', '2', 36, 1),
(60, 'Poliwag', 2, 1, 'Tadpole Pokémon, hypnotic swirl belly', 'Bubble', '10', 'Electric', 'None', '1', 59, 1),
(90, 'Arcanine', 1, 2, 'Legendary Pokémon, evolves from Growlithe', 'Flamethrower', '50', 'Water', 'None', '3', 23, 1),
(70, 'Electabuzz', 4, 1, 'Electric Pokémon, strong arms', 'Thunder Punch', '30+', 'Fighting', 'Steel', '2', 20, 1),
(60, 'Oddish', 3, 1, 'Weed Pokémon, nocturnal plant', 'Absorb', '10', 'Fire', 'Water', '1', 58, 2),
(80, 'Scyther', 3, 1, 'Mantis Pokémon, sharp scythes', 'Slash', '30', 'Fire', 'None', '1', 10, 2),
(100, 'Mewtwo', 5, 1, 'Genetic Pokémon, legendary psychic', 'Psychic', '40+', 'Psychic', 'None', '2', 10, 1),
(60, 'Gastly', 5, 1, 'Gas Pokémon, evolves into Haunter', 'Lick', '10', 'Psychic', 'None', '1', 33, 3);
