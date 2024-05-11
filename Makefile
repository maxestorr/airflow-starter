init:
	echo "AIRFLOW_UID=1000" > .env
	docker compose up airflow-init

up:
	docker compose up

down:
	docker compose down --volumes --rmi all
