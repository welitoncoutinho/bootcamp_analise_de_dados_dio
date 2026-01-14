-- Seed for tbl_collections
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed for tbl_types
INSERT INTO tbl_types (typeName)
VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic');

-- Seed for tbl_stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed for tbl_cards
INSERT INTO tbl_cards (
    hp, name, type_id, stage_id, info, attack, damage, weak, resis, retreat, cardNumberInCollection, collection_id
) VALUES
(120, 'Charizard', 1, 3, 'Flame Pokémon, evolves from Charmeleon', 'Fire Spin', '100', 'Water', 'None', '3', 4, 1),
(100, 'Blastoise', 2, 3, 'Shellfish Pokémon, evolves from Wartortle', 'Hydro Pump', '60+', 'Electric', 'None', '3', 2, 1),
(60, 'Pikachu', 4, 1, 'Mouse Pokémon, fan favorite mascot', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1', 58, 1),
(50, 'Bulbasaur', 3, 1, 'Seed Pokémon, starter from Kanto', 'Vine Whip', '20', 'Fire', 'Water', '1', 44, 1),
(80, 'Gengar', 5, 3, 'Shadow Pokémon, evolves from Haunter', 'Nightmare', '30', 'Psychic', 'Fighting', '1', 5, 3);
    