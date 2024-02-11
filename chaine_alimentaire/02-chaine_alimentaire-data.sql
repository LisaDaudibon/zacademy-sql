INSERT INTO legumes
VALUES ('4f049223-704c-487a-ac7c-99a5bad9cbba', 'chou', 'vert');
INSERT INTO legumes
VALUES ('a2b843b8-7389-4df4-9b86-f924bd7d2a7d', 'chou', 'rouge');
INSERT INTO legumes
VALUES ('374a1c30-15a3-4b53-8150-8ddc581b3655', 'tomate', 'rouge');
INSERT INTO legumes
VALUES ('01f7f556-7aec-42ed-9373-1b018a79ec4f', 'tomate', 'jaune');
INSERT INTO legumes
VALUES ('56aee3e8-fecc-4666-be0e-2989db0f9c92', 'salade', 'vert');
INSERT INTO legumes
VALUES ('68660215-368a-4f90-b4e4-c5ab6f2a336c', 'carotte', 'orange');
INSERT INTO legumes (tid, nom, couleur)
VALUES ('29924c72-e4d2-48ce-b172-347f0e3fcbeb', 'pomme de terre', 'marron');
INSERT INTO legumes (tid, nom, couleur)
VALUES ('1d083824-f67f-4ec3-a591-decd84877a56', 'aubergine', 'violet');
INSERT INTO legumes (tid, nom, couleur)
VALUES ('47d897f4-2d5f-4ad3-98fe-1a7992a9c80f', 'Poivron rouge', 'rouge');
INSERT INTO legumes (tid, nom, couleur)
VALUES ('3f078c2a-3a30-4b05-8126-75739459caab', 'courgette', 'vert');
INSERT INTO legumes (tid, nom, couleur)
VALUES ('18bcaa5c-fbea-49ab-8c63-890ce85a3ac1', 'oignon', 'blanc');

INSERT INTO animaux
VALUES ('2bc94dfa-e776-4487-ad38-feef4a0376c1', 'lapin', 4, '68660215-368a-4f90-b4e4-c5ab6f2a336c');
INSERT INTO animaux
VALUES ('5e82e713-ece2-4973-a7a9-619c5966bf7d', 'Âne', 4, '01f7f556-7aec-42ed-9373-1b018a79ec4f');
INSERT INTO animaux
VALUES ('258bf92c-611e-45be-a2dc-3ebdb1f3ea59', 'kangourou', 2, null);
INSERT INTO animaux
VALUES ('d9f59987-dd96-4d4c-8cfe-5f44c4e29bc5', 'chenille', 6, '4f049223-704c-487a-ac7c-99a5bad9cbba');
INSERT INTO animaux
VALUES ('a731a743-24b2-4a94-a1b7-fa7130c4df73', 'limace', 0, '4f049223-704c-487a-ac7c-99a5bad9cbba');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('af91bee8-41fa-45ab-8413-154c0892b615', 'tortue', 4, '56aee3e8-fecc-4666-be0e-2989db0f9c92');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('2b4c5d16-7403-4c94-a451-c641cc4bdf0b', 'coccinelle', 6, '01f7f556-7aec-42ed-9373-1b018a79ec4f');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('3f426739-695c-4586-86e2-d768ad64c5e1', 'cheval', 4, '29924c72-e4d2-48ce-b172-347f0e3fcbeb');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('980fbae5-dee6-4575-9cf3-7279b6065727', 'Souris', 4, '1d083824-f67f-4ec3-a591-decd84877a56');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('911b005f-ceea-4a03-90c5-a5a977065863', 'Poule', 2, '47d897f4-2d5f-4ad3-98fe-1a7992a9c80f');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('1e7b39c4-1d26-49f8-a5e7-33029f393af4', 'Canard', 2, '3f078c2a-3a30-4b05-8126-75739459caab');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('d0bc5719-e8ff-4822-9353-57b67daec1f8', 'Chien', 4, '18bcaa5c-fbea-49ab-8c63-890ce85a3ac1');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('70085267-fc93-4e69-b468-34c4701c5cd4', 'Grenouille', 4, '29924c72-e4d2-48ce-b172-347f0e3fcbeb');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('b7a06561-9d00-4ac5-9ea4-9bf1d09e9efe', 'Écureuil', 4, '1d083824-f67f-4ec3-a591-decd84877a56');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('2916175f-64e2-409b-b4f6-a8374b29098a', 'Hérisson', 4, '47d897f4-2d5f-4ad3-98fe-1a7992a9c80f');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('37e698da-a402-43ec-9888-840750c54827', 'Perroquet', 2, '3f078c2a-3a30-4b05-8126-75739459caab');
INSERT INTO animaux (tid, nom, nombre_pattes, legume_prefere)
VALUES ('3fc0dcd6-76f9-4857-8a19-3388b5b44342', 'Renard', 4, '18bcaa5c-fbea-49ab-8c63-890ce85a3ac1');