curl localhost:8083/connectors -X POST -H 'Content-Type: application/json' -k -u kc_username:kc_password -d '{
    "name": "impostor-b2c-sailfish-feed_orders",
    "config": {
        "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
        "publication.name": "dbz_publication",
        "schema.include.list": "public",
        "schema.refresh.mode": "columns_diff",
        "slot.max.retries": "6",
        "database.sslmode": "disable",
        "database.sslcert": "",
        "replica.identity.autoset.values": "public.feed_orders:FULL",
        "poll.interval.ms": "1000",
        "interval.handling.mode": "numeric",
        "database.initial.statements": "",
        "heartbeat.topics.prefix": "__debezium-heartbeat.feed_orders",
        "snapshot.fetch.size": "10240",
        "key.converter": "org.apache.kafka.connect.json.JsonConverter",
        "snapshot.lock.timeout.ms": "10000",
        "database.user": "postgres",
        "database.dbname": "postgres",
        "database.sslkey": "",
        "snapshot.select.statement.overrides": "",
        "connector.id": "postgres",
        "heartbeat.interval.ms": "10000",
        // "column.include.list": "",
        "database.sslpassword": "",
        "plugin.name": "pgoutput",
        "toasted.value.placeholder": "__debezium_unavailable_value",
        "key.converter.schemas.enable": "false",
        "database.password": "root",
        "value.converter.schemas.enable": "false",
        "name": "impostor-b2c-sailfish-feed_orders",
        "database.sslrootcert": "",
        "max.batch.size": "10240",
        "snapshot.mode": "never",
        "snapshot.custom.class": "",
        "max.queue.size": "20240",
        "slot.name": "debezium_impostor_feed_orders",
        "tasks.max": "1",
        "hstore.handling.mode": "map",
        "tombstones.on.delete": "true",
        "topic.prefix": "impostor.sailfish",
        "slot.retry.delay.ms": "10000",
        "decimal.handling.mode": "precise",
        "value.converter": "org.apache.kafka.connect.json.JsonConverter",
        "publication.autocreate.mode": "disabled",
        "connector.displayName": "PostgreSQL",
        "slot.drop.on.stop": "false",
        "time.precision.mode": "adaptive",
        "database.server.name": "b2c",
        "event.processing.failure.handling.mode": "warn",
        "database.port": "5432",
        "include.unknown.datatypes": "false",
        "database.hostname": "postgres",
        "table.include.list": "public.feed_orders",
        "slot.stream.params": ""
      }
  }'
