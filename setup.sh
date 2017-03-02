docker build -t simple-student-registration-system .

if docker-compose up; then
	echo "simple-student-registration-system is up and running on port 8088"
else
	echo "Error in starting simple-student-registration-system"
	docker-compose down
	exit 1
fi
