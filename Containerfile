FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_project_demo create-db
RUN flask_project_demo populate-db
RUN flask_project_demo add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_project_demo", "run"]
