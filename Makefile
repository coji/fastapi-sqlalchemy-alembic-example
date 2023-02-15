dev:
	uvicorn server:app --reload

create_user:
	curl -X POST -H "Content-Type: application/json" -d '{"email":"coji@techtalk.jp", "password":"pass"}' http://localhost:8000/users
	
migrate_upgrade:
	alembic upgrade head

migrate_revision:
	alembic revision --autogenerate

