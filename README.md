# MERN Stack Movies App 👇

## Steps To Run MERN Movie-App

> [!Important]
> Make sure to change docker build command with your DockerHub username.
  #
  - Create a docker network
  ```bash
        docker network create <Network-Name>
  ```
  #
  - Run MONGO container
  ```bash
        docker run --network=<Network-Name> --name mongo -d -p 27017:27017 mongo
  ```

  #
  - Run Backend container
  ```bash
        docker run --network=<Network-Name> --name backend -d -p 5000:5000 sidraut007/movie-back
  ```

  #
  - Run Application container
  ```bash
        docker run --network=<Network-Name> --name frontend -d -p 5173:5173 sidraut007/movie-front
  ```
  #
  - Verify deployment
  ```bash
      docker ps
  ```

 #
  - HOW TO IMPORT LOCAL DATADABE

```bash

docker cp ./dump/moviesApp <Container_Name>:/data/moviesApp

docker exec -it <Container_Name> bash

mongorestore --db moviesApp /data/moviesApp

```

 #
  - Using docker-compose deployment
  ```bash
      docker compose up -d
  ```



![Course Thumbnail](/thumb.png)
