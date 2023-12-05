up : 
	docker system prune -f
	sudo mkdir -p /home/ramhouch/data/wordpress /home/ramhouch/data/mariadb
	@docker-compose -f ./srcs/docker-compose.yml up --build -d

down : 
	@docker-compose -f ./srcs/docker-compose.yml down

stop : 
	@docker-compose -f ./srcs/docker-compose.yml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yml start

ps : 
	@docker ps
