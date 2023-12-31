
up-kong:
	cd docker-compose/kong && docker-compose up -d

up-apisix:
	cd docker-compose/apisix && docker-compose up -d
	sleep 5
	cd docker-compose/apisix && ./setup.sh


down-kong:
	cd docker-compose/kong && docker-compose down

down-apisix:
	cd docker-compose/apisix && docker-compose down


bench-kong:
	wrk -t1 -c100 -d15s --script benchmark/path-github.lua http://localhost:8000

bench-apisix:
	wrk -t1 -c100 -d15s --script benchmark/path-github.lua http://localhost:9080


