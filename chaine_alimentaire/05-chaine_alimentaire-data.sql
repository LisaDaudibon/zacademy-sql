INSERT INTO legumes (tid, nom, couleur)
VALUES ('086c3ca5-a63d-43d6-90f3-80e81fbada72', 'citrouille', 'orange');

-- Try this
-- INSERT INTO animaux (nom, nombre_pattes, legume_prefere, classification)
-- VALUES ('ours', 4, '086c3ca5-a63d-43d6-90f3-80e81fbada72', 'plop');
-- ERROR: invalid input value for enum regime: "plop"
-- Position: 133

INSERT INTO animaux (nom, nombre_pattes, legume_prefere, classification)
VALUES ('ours', 4, '086c3ca5-a63d-43d6-90f3-80e81fbada72', 'omnivore');

INSERT INTO legumes (nom)
VALUES ('céleri');