CREATE VIEW vw_cards_detalhado AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.typeName AS tipo,
    s.stageName AS estagio,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName AS colecao,
    col.releaseDate AS data_lancamento,
    col.totalCardsInCollection AS total_cartas_colecao
FROM tbl_cards c
LEFT JOIN tbl_types t ON c.type_id = t.id
LEFT JOIN tbl_stages s ON c.stage_id = s.id
INNER JOIN tbl_collections col ON c.collection_id = col.id;
