# Geoserver ASRC

Geoserver docker configuration for CUNY ASRC ESI

## secrets

Docker swarm secrets are used to manage database credentials within the app-schema mapping xml files. 

`${postgis.passwd}` 

interpolates to correct value from the secret file. 


./app-schema.properties.
```
postgis.host = myhost.com
postgis.port = 5432
postgis.database = mydb
postgis.user = myuser
postgis.passwd = mypass
```

`$ docker secret create postgis app-schema.properties`