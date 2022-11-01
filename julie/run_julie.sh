docker run -v /Users/konrad.szatan/Projects/tink-kip/julie/files:/files --network host \
 --platform="linux/amd64" purbon/kafka-topology-builder:latest julie-ops-cli.sh \
 --brokers localhost:9092,localhost:9093,localhost:9094 --clientConfig /files/config.properties \
 --topology /files/topology.yaml
