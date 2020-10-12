# MADINA-TIC
MADINA-TIC project is based on django for backend and react for frontend,
postgresql for database and nginx as a web proxy.

## Deployment:

### Docker deployment:
![](img/deployment.png)
====

	- requirements:
		1. install docker deamon [docs](https://docs.docker.com/install/).
		2. install docker-compose tool [docs](https://docs.docker.com/compose/install/).
	1. clone the source code:
		- `git clone https://github.com/th3happybit/MADINA-TIC-BACK.git`
		- `git clone https://github.com/th3happybit/MADINA-TIC-FRONT.git`

	2. build the backend image:
		- `sudo docker build -t madina-tic/backend:0.1 MADINA-TIC-BACK -f MADINA-TIC-BACK/Dockerfile`

	3. build the frontend image:
	    - dev: `sudo docker build -t madina-tic/frontend:0.1 MADINA-TIC-FRONT -f MADINA-TIC-FRONT/Dockerfile.dev`
	    - prod: `sudo docker build -t madina-tic/frontend:0.1 MADINA-TIC-FRONT -f MADINA-TIC-FRONT/Dockerfile`



	4. run the services:
		- dev:
			- use nginx dev config `local.conf`
			- `sudo docker-compose --file docker-compose-develop.yml up -d`
		- prod: 
			- use nginx prod config inside `local.config.prod` in place of local.conf `cp local.config.https local.config`
			- `sudo docker-compose up -d`

### Manual deployment
	- requirements:
		1. python 3.8 and pip
		2. nodejs and yarn
	1. setup the backend:
		- install django and other requirements:
			- `sudo pip install -r requirements.txt`
		- run server:
			- `./manager.py runserver`
	2. setup the frontend:
		- install frontend requirements:
			- `yarn install`
		- run the server:
			- `yarn start`

## Docs

1. First login as an admin:

	`http://0.0.0.0/api/admin/`
	
		- creds:
			username: admin
			password: blackholE

2.	docs route:
	`http://0.0.0.0/api/swagger/`
