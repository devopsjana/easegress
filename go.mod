module github.com/megaease/easegress

go 1.16

require (
	github.com/ArthurHlt/go-eureka-client v1.1.0
	github.com/Shopify/sarama v1.32.0
	github.com/alecthomas/jsonschema v0.0.0-20210526225647-edb03dcab7bc
	github.com/bytecodealliance/wasmtime-go v0.33.1
	github.com/eclipse/paho.mqtt.golang v1.3.5
	github.com/facebookgo/ensure v0.0.0-20200202191622-63f1cf65ac4c // indirect
	github.com/facebookgo/freeport v0.0.0-20150612182905-d4adf43b75b9 // indirect
	github.com/facebookgo/stack v0.0.0-20160209184415-751773369052 // indirect
	github.com/facebookgo/subset v0.0.0-20200203212716-c811ad88dec4 // indirect
	github.com/fatih/color v1.13.0
	github.com/fsnotify/fsnotify v1.5.1
	github.com/ghodss/yaml v1.0.0
	github.com/go-chi/chi/v5 v5.0.7
	github.com/go-zookeeper/zk v1.0.2
	github.com/goccy/go-json v0.9.4
	github.com/golang-jwt/jwt v3.2.1+incompatible
	github.com/google/uuid v1.3.0
	github.com/gorilla/websocket v1.5.0
	github.com/hashicorp/consul/api v1.12.0
	github.com/hashicorp/golang-lru v0.5.4
	github.com/json-iterator/go v1.1.12
	github.com/klauspost/compress v1.14.4
	github.com/libdns/alidns v1.0.2-x2
	github.com/libdns/azure v0.2.0
	github.com/libdns/cloudflare v0.1.0
	github.com/libdns/digitalocean v0.0.0-20210310230526-186c4ebd2215
	github.com/libdns/dnspod v0.0.3
	github.com/libdns/duckdns v0.1.1
	github.com/libdns/hetzner v0.0.1
	github.com/libdns/libdns v0.2.1
	github.com/libdns/route53 v1.1.2
	github.com/libdns/vultr v0.0.0-20211122184636-cd4cb5c12e51
	github.com/lucas-clemente/quic-go v0.25.0
	github.com/megaease/easemesh-api v1.3.5
	github.com/megaease/grace v1.0.0
	github.com/mitchellh/mapstructure v1.4.3
	github.com/nacos-group/nacos-sdk-go v1.1.0
	github.com/opentracing/opentracing-go v1.2.0
	github.com/openzipkin-contrib/zipkin-go-opentracing v0.4.5
	github.com/openzipkin/zipkin-go v0.4.0
	github.com/patrickmn/go-cache v2.1.0+incompatible
	github.com/phayes/freeport v0.0.0-20180830031419-95f893ade6f2
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475
	github.com/rs/cors v1.8.2
	github.com/spf13/cobra v1.3.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.10.1
	github.com/stretchr/testify v1.7.0
	github.com/tcnksm/go-httpstat v0.2.1-0.20191008022543-e866bb274419
	github.com/tg123/go-htpasswd v1.2.0
	github.com/tidwall/gjson v1.14.0
	github.com/tomasen/realip v0.0.0-20180522021738-f0c99a92ddce
	github.com/valyala/fasttemplate v1.2.1
	github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb // indirect
	github.com/xeipuuv/gojsonschema v1.2.1-0.20201027075954-b076d39a02e5
	github.com/yl2chen/cidranger v1.0.2
	go.etcd.io/etcd/api/v3 v3.5.2
	go.etcd.io/etcd/client/v3 v3.5.2
	go.etcd.io/etcd/server/v3 v3.5.2
	go.uber.org/zap v1.21.0
	golang.org/x/crypto v0.0.0-20220214200702-86341886e292
	golang.org/x/net v0.0.0-20220127200216-cd36cc0744dd
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/sys v0.0.0-20220114195835-da31bd327af9
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/api v0.22.5
	k8s.io/apimachinery v0.22.5
	k8s.io/client-go v0.22.5
	knative.dev/client v0.29.0
	knative.dev/serving v0.29.0
)

replace github.com/go-openapi/spec => github.com/go-openapi/spec v0.19.3

replace github.com/buger/jsonparser => github.com/buger/jsonparser v1.1.1
