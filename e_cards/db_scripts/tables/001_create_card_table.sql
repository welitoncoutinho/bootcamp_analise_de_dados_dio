CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

CREATE TABLE tbl_types ( 
    id SERIAL PRIMARY KEY, 
    typeName VARCHAR(20) NOT NULL UNIQUE ); 

CREATE TABLE tbl_stages ( 
    id SERIAL PRIMARY KEY, 
    stageName VARCHAR(20) NOT NULL UNIQUE );

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(80) NOT NULL,
    type_id INT,
    stage_id INT,
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(10),
    weak VARCHAR(20),
    resis VARCHAR(20),
    retreat VARCHAR(20),
    cardNumberInCollection INT,
    collection_id INT NOT NULL,
    CONSTRAINT fk_collection FOREIGN KEY (collection_id) REFERENCES tbl_collections (id),
    CONSTRAINT fk_type FOREIGN KEY (type_id) REFERENCES tbl_types (id),
    CONSTRAINT fk_stage FOREIGN KEY (stage_id) REFERENCES tbl_stages (id),
);
