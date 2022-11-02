# Kafka Improvement proposals
## GOAL: Improving engineering productivity while working with Kafka Infrastructure

### Engineers voice

- Self-service for Kafka Artifacts PROPOSAL: Julie Ops to control topics and ACLs
- Easy manual record sending/reading while development PROPOSAL: Kafka Rest Proxy alternatively boostraping tools like kcat
- Visibility of configuration PROPOSAL: Rest Proxy V3 API + Julie Ops
- More stable Burrow metrics unstable PROPOSAL: Can investigate

### Instruction

- run docker compose
- to create topics / acls edit /julie/files/topology.yaml and run /julie/run_julie.sh (you can test if it created your topics either with kafka tools included or list_topics.sh)
- produce some records with /kafka-rest/kafka-produce-json.http
- consume them with flow of requests kafka-create-consumer.http -> kafka-create-subscription.http ->  kafka-consume-json.http (may need to run it twice due to rest proxy architecture)
- delete consumer with kafka-delete-consumer.http

### Useful link

- https://julieops.readthedocs.io/en/3.x/#installation
- https://julieops.readthedocs.io/en/3.x/what-can-you-do.html#themes
- https://julieops.readthedocs.io/en/3.x/config-values.html#access-control-configuration
- https://julieops.readthedocs.io/en/3.x/the-descriptor-files.html#manage-only-topics-the-optional-files

- https://docs.confluent.io/platform/current/kafka-rest/api.html#crest-api-v3

### TO DO

- Add SchemaRegistry with Protobuf integration