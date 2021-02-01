# Geoserver ASRC

Geoserver docker configuration for CUNY ASRC ESI.

See [Kartoza's Geoserver Base Image](https://github.com/kartoza/docker-geoserver) for configuartion information such as the contents of `geoserver.env`. Notably , geoserver plugins are enabled here. 

## Running

#### Compose
For testing & development, use docker-compose. 
```
# spin up
$ docker-compose -f [docker-compose-file.yml] -p [project_name] up --build -d

# spin down
$ docker-compose -f [docker-compose-file.yml] -p [project_name] down
```
#### Swarm mode
Docker swarm is utilized for the production image. At the moment, this is a simple single node swarm. 

```
$ docker swarm int
$ dock stack deploy -c [docker-compose-file.yml] [stack-name]
```
## secrets

Docker swarm secrets are used to manage database credentials within the app-schema mapping xml files. 

`${postgis.passwd}` 

interpolates to correct value from the secret file. 


Create `./app-schema.properties` as such:
```
postgis.host = myhost.com
postgis.port = 5432
postgis.database = mydb
postgis.user = myuser
postgis.passwd = mypass
```

`$ docker secret create postgis app-schema.properties`

[app-schema property interpoloation ref](https://docs.geoserver.org/stable/en/user/data/app-schema/property-interpolation.html)

## Backup
The backup*.sh scripts will backup/restore the geoserver-data volume. All customizations the image are stored here. 

TODO: Make these scripts not terrible. 