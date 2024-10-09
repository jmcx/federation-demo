docker-compose exec connect kafka-console-consumer \
  --bootstrap-server kafka1:11091,kafka2:11092 \
  --consumer-property security.protocol=SSL \
  --consumer-property ssl.truststore.location=/etc/kafka/secrets/kafka.appSA.truststore.jks \
  --consumer-property ssl.truststore.password=confluent \
  --consumer-property ssl.keystore.location=/etc/kafka/secrets/kafka.appSA.keystore.jks \
  --consumer-property ssl.keystore.password=confluent \
  --consumer-property ssl.key.password=confluent \
  --property basic.auth.credentials.source=USER_INFO \
  --property basic.auth.user.info=appSA:appSA \
  --group wikipedia.test \
  --topic orders \
  --max-messages 5




  removed:

    --property schema.registry.url=https://schemaregistry:8085 \
  --property schema.registry.ssl.truststore.location=/etc/kafka/secrets/kafka.appSA.truststore.jks \
  --property schema.registry.ssl.truststore.password=confluent \