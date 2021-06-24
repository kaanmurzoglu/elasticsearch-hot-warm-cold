# elasticsearch-hot-warm-cold
## Usage
First, get the script and make it executable:

### Hot to Warm Migrate
```
curl -O https://raw.githubusercontent.com/knmrzl/elasticsearch-hot-warm-cold/main/hot-to-warm-migrate.sh
chmod +x hot-to-warm-migrate.sh
```
Then run it:
```
./hot-to-warm-migrate.sh <ElasticSearch Endpoint> index-name-2021.04
```

### Warm to Cold Migrate
```
curl -O https://raw.githubusercontent.com/knmrzl/elasticsearch-hot-warm-cold/main/warm-to-cold-migrate.sh
chmod +x hot-to-warm-migrate.sh
```

Then run it:
```
./warm-to-cold-migrate.sh <ElasticSearch Endpoint> index-name-2021.04
```
