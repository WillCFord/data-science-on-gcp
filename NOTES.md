# Book Notes

## Chapter 2
The coderepo can be found here:

```bash
git clone
   https://github.com/GoogleCloudPlatform/data-science-on-gcp/
```

## Chapter 3

> Give database access to my local machine


```bash
gcloud sql instances patch flights2    --authorized-networks $(wget -qO - http://ipecho.net/plain)
```
> Get the ip address of the flights database

```bash
gcloud sql instances describe
     flights2 --format="value(ipAddresses.ipAddress)"
```

result = **35.X.X.X**


### Ingestion
1. Reset the files to *flights.csv-X*
2. run the following command
```mysqlimport --local --host=$MYSQLIP --user=root --password \                                                      
  --ignore-lines=1 --fields-terminated-by=',' \
  bts flights.csv-*```
