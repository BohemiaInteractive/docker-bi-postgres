# docker-bi-postgres

adds support for `$POSTGRES_DB_LIST` env variable and creates the listed databases once the container is created  

```yaml
    environment:
      POSTGRES_DB_LIST: default,database2,database3
```
