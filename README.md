# Découverte des bases de données relationnelles

## Prérequis

### Installation de docker

On va utiliser docker en mode "baguette magique" pour démarrer postgresql. Installer docker sur votre machine. Verifier qu'il fonctionne correctement avec un `docker container ls`.

### Démarrer postgresql avec docker

Docker permet de démarrer des **containers** ou **conteneurs** à partir d'**images**. Une image *immuable* est une sorte de "template" qui décrit la façon de lancer un programme. Le conteneur est une instance isolée de ce programme.

Il y a une analogie possible avec la POO : Image = Classe, Container = Objet (ou instance).

Pour démarrer un conteneur postgresql avec docker, vous pouvez utiliser la commande suivante dans un terminal :

```
docker container run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=changeme -d postgres:16-alpine
```

> Cette commande lance un conteneur docker nommé `my-postgres` utilisant l'image `postgres:16-alpine`, expose le port `5432` du conteneur sur le port `5432` de l'hôte, définit le mot de passe de l'utilisateur PostgreSQL par défaut à `changeme` avec la variable d'environnement `POSTGRES_PASSWORD`, et exécute le conteneur en arrière-plan (`-d` pour detached).

Le conteneur peut ensuite être stoppé / démarré avec les commandes suivantes (il faudra peut-être le démarrer après un reboot de l'ordinateur) :

```
docker container stop my-postgres
docker container start my-postgres
```

### Démarrer postgresql avec docker compose

Docker compose vous permet de _composer_ un ensemble de conteneurs, un peu de documentation : https://docs.docker.com/compose/intro/features-uses/
Vous devez créer un `docker-compose.yml` qui reprend l'idée du démarrage du conteneur.

- Utilisez l'image `postgres:16-alpine`.
- Configurez les variables d'environnement pour l'utilisateur, le mot de passe et le nom de la base `zmdb`.
- Assurez-vous que le service redémarre automatiquement sauf si arrêté.

```
docker compose up -d
```

Vérifier que votre conteneur s'exécute :

```
docker container ls
```

### Se connecter avec un client SQL (DBeaver, Datagrip ou Intellij de Jetbrains etc.)

Votre client SQL permet de créer des connexions. Les informations de connexion sont les suivantes :

* host : localhost
* port : 5432 (le port que vous avez exposé sur le host)
* username : postgres (le nom d'utilisateur que vous avez paramétré dans votre compose)
* password : changeme (le mot de passe que vous avez paramétré dans votre compose).

Ouvrir une console sur le schéma `public` et jouer les deux scripts sql fournis [02-zmdb-create-structure.sql](zmdb/02-zmdb-create-structure.sql), puis [03-zmdb-data.sql](zmdb/03-zmdb-data.sql).

🚨Les deux scripts s'exécuteront correctement si vous disposez d'une base de données `zmdb` (Zenika Movie DataBase).

💡Créer la base de données avec la bonne variable d'environnement au sein de `docker-compose.yml` ou utiliser le script [01-zmdb-create-database.sql](zmdb/01-zmdb-create-database.sql).

Vous pouvez explorer les tables et les données créées grâce à votre outil favori.

## Requêtes SQL

### Sélection simple

1) Afficher tout le contenu de la table `movies`.
2) Afficher la liste des films triés par année de sortie croissante (Uniquement le nom des films doit apparaitre).
3) Afficher la liste des personnes enregistrées en base (table `people`, uniquement les noms et prénoms).
4) Afficher la liste des films sortis avant les années 2000.
5) Afficher la durée moyenne des films.

### Jointures

1) Afficher la liste des films avec leur réalisateur.
2) Afficher la liste des films avec leur casting (Chaque film aura une ligne par personnage).
3) Afficher la liste des personnages du film "titanic" (Seulement le nom des personnages doit apparaitre).
4) Afficher la liste des personnes qui ont réalisé un film (uniquement leur nom).
5) Afficher la liste des notes du film "The Gentlemen".
6) Afficher la liste des reviewers ayant noté tous les films.
7) Afficher la liste des reviewers n'ayant noté aucun film.

### Grouper

1) Afficher la note moyenne de chaque film.
2) Afficher la liste des films triés par la note moyenne la plus forte.

### Insérer des données

1) Insérer un film réalisé par Guy Ritchie dans la base de données.
2) Insérer un film réalisé par Lino Ventura dans la base de données.
3) Insérer la distribution ("casting") de ces deux films dans la base de données.

### Modifier/Supprimer des données

1) Modifier la note de "Hungry Jang" sur le film "Inglourious Basterds" à 3 étoiles.
2) Supprimer la note de "Hungry Jang" sur le film "The Gentlemen".
3) Supprimer le film "Snatch" de la base de données et toutes les données qui y sont liées.

## Modélisation de base de données

On souhaite ajouter le support des séries TV à la base de données.

### Création de table

1) écrire la requête de création d'une table `tv_shows` pour stocker les séries. Cette table doit contenir les informations suivantes :
    * un ID numérique qui est la clé primaire.
    * Un titre.
    * Un nombre de saisons.
    * Une année de début.
    * Une année de fin (potentiellement vide si la série est en cours).
2) écrire la requête de création d'une table `shows_episodes` pour stocker les épisodes d'une série. Cette table doit contenir les informations suivantes :
    * Un numéro de saison.
    * Un numéro d'épisode dans la saison.
    * L'id de la série dont l'épisode fait partie (cette colonne doit référencer la colonne ID des séries TV).
    * Un titre.
    * La clé primaire de cette table est constituée des trois premières colonnes.
3) Insérer quelques données dans ces tables.
4) BONUS : créer une table permettant de stocker des reviews sur des épisodes de séries.

## Documentation

* https://docs.postgresql.fr/16/
* https://docs.postgresql.fr/16/ddl.html définition de données
* https://docs.postgresql.fr/16/dml.html modification / insertion de données
* https://docs.postgresql.fr/16/queries.html
